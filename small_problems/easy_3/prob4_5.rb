# input: two ints output: multiplied

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts multiply(5, 3) == 15
