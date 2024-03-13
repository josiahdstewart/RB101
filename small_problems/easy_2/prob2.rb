# input: length, width in m  output: area in m2 and ft2
# 1 m2 = 10.7639 sq ft
# don't worry about input validation
# data structure: float
# algo
# get length and width; multiply. Convert to sqaure feet and puts both

def m2_to_sqft(value)
  value * 10.7639
end

def input_value(type)
  puts "Enter the #{type} of the room in meters"
  gets.chomp.to_f
end

length = input_value("length")
width = input_value("width")
area = (length * width).round(2)

puts "The area of the room is #{area} sqaure meters (#{m2_to_sqft(area)} square feet)"

