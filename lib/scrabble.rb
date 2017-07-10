class Scrabble

  VALUES = {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10
  }

  def score(word)
    total = 0
    unless word == nil
      jumble = word.upcase.split('')
      jumble.each do |char|
        total += VALUES[char]
      end 
    end
    total
  end

  def word_xtwo(total)
    total = total.to_i
    total * 2
  end 

  def word_xthree(total)
    total = total.to_i 
    total * 3
  end 

  def start
    puts "Enter a word"
    input = gets.chomp
    final_score = self.score(input)
    puts "Your scrabble score for the word: #{input} is #{final_score}"
    sleep 1
    puts "Your score multiplied by two is #{self.word_xtwo(final_score)}"
    sleep 1
    puts "Your score multiplied by three is #{self.word_xthree(final_score)}"
    puts "Choose another word? Y/N"
    choice = gets.chomp.upcase
    if choice.include? "Y"
      start 
    end 
  end
  
end 