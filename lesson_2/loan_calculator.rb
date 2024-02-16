# ask user for: APR, loan duration, loan amount
# calculate monthly interest, loan duration in mo, mo. payment
require "pry"

def prompt(message)
  puts "=> #{message}"
end

def validate(number)
  if number > 0
    number
  end
end

def input_data(message)
  prompt(message)
  user_input = nil
  loop do
    user_input = gets.chomp
    if validate(user_input.to_f)
      break
    else
      prompt "Please provide a valid number: "
    end
  end
  user_input
end

loop do
  apr = nil
  loan_duration = []
  loan_principal = nil

  prompt "Hello! Welcome to your personal loan calculator!"
  prompt "What is your name?"
  name = gets.chomp
  prompt "Hello, #{name}!"
  loop do
    loan_principal = input_data("Please provide your loan amount: ").to_f
    apr = input_data("Provide your Annual Percentage Rate in % (APR)").to_f
    loan_duration = input_data("Provide the duration of your loan (yrs/mo):")
    loan_duration = loan_duration.split('/')

    while loan_duration.size < 2
      loan_duration.push(0)
    end

    loan_duration.map! { |number| number.to_i.to_s == number ? number.to_i : 0 }

    info_confirm = <<-INF
      Please confirm this informationr
      Loan Amount: $#{loan_principal}
      APR = #{apr}%
      Loan Duration: #{loan_duration[0]} years, #{loan_duration[1]} months
      Is this correct? (Y/N)
    INF

    prompt info_confirm
    if gets.chomp.downcase == "y"
      break
    else
      prompt "Check if your loan duration is in the (years/months) format!"
    end
  end

  mo_int = (apr / 100) / 12
  loan_dur_mo = (loan_duration[0] * 12) + loan_duration[1]
  mo_payment = loan_principal * (mo_int / (1 - ((1 + mo_int)**(-loan_dur_mo))))

  prompt "Your monthly payment is $#{mo_payment.truncate(2)}"

  prompt "Would you like to run another calculation? (y/n) "
  if gets.chomp.downcase != "y"
    prompt "Thank you for visiting us, #{name}!"
    break
  end
end
