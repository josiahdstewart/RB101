# input: bill and tip % output: tip + total bill
# data: float
# algo:
# get numbers, convert % to decimal, multiply, add tip to total, print tip + total

def message(str)
  puts "=> What is the #{str}?"
end

message("bill")
bill = gets.to_f
message("tip percentage")
tip_percent = (gets.to_f) / 100

tip = (bill * tip_percent).round(2)
total = (bill + tip).round(2)

puts "The total is $#{total}"
puts "The tip is $#{tip}"
