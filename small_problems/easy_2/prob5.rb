# input: user name; output: greeting
# require: if name! then yell back at user
# data structure: string
# algo
# get user name, check if ends in !, if yes, yell back

def response(yelling, name)
  yelling ? "HELLO #{name.upcase} WHY ARE WE SCREAMING?" : "Hello #{name}."
end

puts "What is your name?"
name = gets.chomp
yell = name[-1] == "!"
puts response(yell, name)
