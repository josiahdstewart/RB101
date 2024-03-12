# input: non-empty string output: middle character/s
# if odd lenght, return just one. If even, shoudl return two
# string
# algo: 
# get string length, if odd, print index of halfway, if even, return half index, if even return half index + 1
require 'pry'

def center_of(input)
  input.length.odd? ? input[input.length / 2] : input[(input.length / 2) - 1, 2]
end

puts center_of('I love ruby').inspect
puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch').inspect
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
