require_relative 'lib/scrabble'

game = Scrabble.new 
game.start

# Uncomment this out to verify code works in this situation for empty string and nil.
puts "Recommended interaction model scores:"
sleep 1
puts "hello: #{game.score("hello")}"
puts "cabbage: #{game.score("cabbage")}"
puts "nil: #{game.score(nil)}"
puts "Empty String: #{game.score('')}"