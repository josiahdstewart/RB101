# ask user for two nubmers
# ask user for operation to perform
# perform operation on numbers
# output result of operation



puts "Welcome to CALCULATOR!"
puts 'First number: '
num_1 = gets.chomp
puts "Second number: "
num_2 = gets.chomp
puts "Numbers: #{num_1} & #{num_2}"

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

case operator
when "1"
  result = num_1.to_i + num_2.to_i
when "2"
  result = num_1.to_i - num_2.to_i
when "3"
  result = num_1.to_i * num_2.to_i
when "4"
  result = num_1.to_f / num_2.to_f
end

puts "The result is: #{result}"
