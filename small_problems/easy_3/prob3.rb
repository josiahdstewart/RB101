# input: words from user output: number of characters NO spaces
# data structure: string
# algo: print message, get string, get length, subtract spaces

puts "Please write a word or multiple words: "
words = gets.chomp
characters = 0

words.each_char { |char| characters += 1 if char != ' ' }
puts "There are #{characters} " + 'characters in "' + "#{words}" + '".'
