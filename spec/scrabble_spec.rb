require 'Scrabble'

RSpec.describe 'A game of scrabble' do 
  let(:scrabble) {Scrabble.new}

  it 'should have a set of values stored in a hash' do
    expect(Scrabble::VALUES).to be_kind_of(Hash)
  end

  it 'should have a score calculator, that returns a score for any given word' do 
    total = scrabble.score('example')
    expect(total).to eq(18)

    total = scrabble.score('cabbage')
    expect(total).to eq(14)

    total = scrabble.score('hello')
    expect(total).to eq(8)

    # Test individual letters match their corresponding numeric value
    total = scrabble.score('A')
    expect(total).to eq(1)

    total = scrabble.score('K')
    expect(total).to eq(5)

    total = scrabble.score('Z')
    expect(total).to eq(10)
  end 

  it 'should return a score of 0 for nil or an empty string' do 
    # test empty string and nil
    total = scrabble.score('')
    expect(total).to eq(0)

    total = scrabble.score(nil)
    expect(total).to eq(0)
  end 

  it 'should have a multiply word by two ability' do 
    number = scrabble.word_xtwo(4)
    expect(number).to eq(8)

    number = scrabble.word_xtwo(9)
    expect(number).to eq(18)

    number = scrabble.word_xtwo('')
    expect(number).to eq(0)

    number = scrabble.word_xtwo(nil)
    expect(number).to eq(0)
  end 

  it 'should have a multiply word by three ability' do 
    number = scrabble.word_xthree(4)
    expect(number).to eq(12)

    number = scrabble.word_xthree(9)
    expect(number).to eq(27)

    number = scrabble.score('')
    expect(number).to eq(0)

    number = scrabble.word_xthree(nil)
    expect(number).to eq(0)
  end

end 