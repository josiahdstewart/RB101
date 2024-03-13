# no input, output Teddy with random age
# data structure: int
# algo: print string with random number inside
puts "Insert name: "
name = gets.chomp
name ||= "George"
if name.empty? then name = "Teddy" end

puts "#{name} is #{rand(20..200)} years old!"
