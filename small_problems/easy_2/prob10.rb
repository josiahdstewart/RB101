# input number; output: negative
# if arg pos, return neg. If 0 or neg, return original

def negative(num)
  (num > 0) ? -num : num
end

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
