#  asks for int greater than 0; asks user for sum or product of all num between 1 and int
# data structure: int
# algo:
# ask for number, ask for s or p, multiply or add 

puts ">> Please enter integer greater than 0"
number = gets.chomp.to_i
puts ">> Enter 's' to compute sum, 'p' to compute produce"
operator = gets.chomp
total = 0

(1..number).each do |num|
  if operator == 's'
    total += num
  else
    total *= num
  end
end

puts total
