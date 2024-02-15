# ask user for two nubmers
# ask user for operation to perform
# perform operation on numbers
# output result of operation

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt "Welcome to CALCULATOR!"

name = ''
loop do
  prompt "What is your name? "
  name = gets.chomp

  if name.empty?
    prompt "Please insert name!"
  else
    break
  end
end

prompt "Hi, #{name}!"

loop do    # main loop
  num1 = ''
  loop do
    prompt 'First number: '
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt "Hmm...that doesn't seem valid"
    end
  end

  num2 = ''
  loop do
    prompt "Second number: "
    num2 = gets.chomp
    if valid_number?(num2)
      break
    else
      prompt "Hmm...that doesn't look valid"
    end
  end
  prompt "Numbers: #{num1} & #{num2}"

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "Must choose 1, 2, 3, or 4!"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when "1"
             num1.to_i + num2.to_i
           when "2"
             num1.to_i - num2.to_i
           when "3"
             num1.to_i * num2.to_i
           when "4"
             num1.to_f / num2.to_f
           end

  prompt "The result is: #{result}"

  prompt "Do you want to perform another calculation? (Y/N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you! Please come again."
