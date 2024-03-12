# input: positive int output: right triangle with sides of n length hypo on L
# Data structure: string
# algo:
# initialize empty string
#   add empty spaces with star at end
#   print string
#   remove empty space and append star number -1 times printing each time
require 'pry'

def triangle(n)
  str = (' ' * (n - 1))
  str << '*'
  puts str
  (n - 1).times do
    str.delete_prefix!(' ')
    str << '*'
    puts str
  end
end

triangle(5)
triangle(9)
