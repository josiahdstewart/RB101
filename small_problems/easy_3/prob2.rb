# input: two positive integers output: all possible opperations
# data structure: int
# algo: 
# get both numbers, 

puts "==> Enter the first number: "
first_num = gets.chomp.to_i
puts "==> Enter the second number: "
second_num = gets.chomp.to_i

['+', '-', '*', '/', '%', '**'].each do |op|
  puts "==> #{first_num} #{op} #{second_num} = #{first_num}
