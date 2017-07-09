require 'Scrabble'

RSpec.describe 'A game of scrabble' do 
  let(:scrabble) {Scrabble.new}

  it 'should have a set of values stored in a hash' do
    expect(scrabble.values).to be_kind_of(Hash)
  end

  it 'should have a score calculator, that is passed an object' do 
    word = scrabble.score('example')
    expect(word).to be_kind_of(Object)
  end  

  it 'should have a multiply by two ability, that is passed an integer' do 
    number = scrabble.word_xtwo(4)
    expect(number).to be_kind_of(Integer)
  end 

  it 'should have a multiply by three ability that is passed an integer' do 
    number = scrabble.word_xthree(4)
    expect(number).to be_kind_of(Integer)
  end  
  
end 

scrabble = Scrabble.new

RSpec.describe 'the values hash' do 
  let(:values) {scrabble.values}

  it 'should include letters of the alphabet as a key' do 
    expect(values).to include("A", "B", "Y", "Z")
    # Slightly different syntax, achieving the same thing.
    expect(values).to have_key("Q")
  end 

  it 'should have values corresponding to the letters' do
    expect(values["A"]).to eq(1)
    expect(values["K"]).to eq(5)
    expect(values["Z"]).to eq(10)
  end 
end 

RSpec.describe 'the scrabble scoring system' do 
  word = 'example'
  jumble = word.upcase.split('')
  total = 0
  let(:values) {scrabble.values}

  it 'should split the word in to separate capital letters' do 
    expect(jumble).to eq(["E", "X", "A", "M", "P", "L", "E"])
  end

  it 'should have a total that begins at 0 and can increment only positively' do 
    expect(total).to be >= 0 
  end 

  it 'should loop over the given letters and add all values together' do 
    jumble.each do |char|
      total += values[char]
    end 
    expect(total).to eq(9)
  end 

end

RSpec.describe 'the word multipliers' do 
  score = 5

  context 'when multiplying by two' do 
    it 'should double the given score' do 
      x_two = score * 2
      expect(x_two).to eq(10)
    end
  end 

  context 'when multiplying by three' do 
    it 'should triple the given score' do 
      x_three = score * 3 
      expect(x_three).to eq(15)
    end 
  end
  
end 