require 'pry'
def mess_with_vars(one, two, three)
  binding.pry
  one = two
  binding.pry
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"
binding.pry

mess_with_vars(one, two, three)
binding.pry
puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
