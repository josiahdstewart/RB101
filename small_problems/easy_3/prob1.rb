# input: 6 numbers from user output: message: if 6th number appears in first 5
# ds = array
# algo: 
# method for message, add numbers to array, check if included, print message

def message(number)
  puts "==> Enter the #{number} number: "
end

def iterate(array)
  number =  ['1st', '2nd', '3rd', '4th', '5th', 'last']
  number.each do |num|
    message(num)
    array << gets.chomp.to_i
  end
end

numbers = []
iterate(numbers)

does = (numbers[0,5].include?(numbers[5])) ? "appears" : "does not appear"
puts "The number #{numbers[5]} #{does} in #{numbers[0,5]}"
