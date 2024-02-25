# ask user for: APR, loan duration, loan amount
# calculate monthly interest, loan duration in mo, mo. payment
require "pry"
require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
MO_YEAR = 2

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
      prompt(MESSAGES['valid_number'])
    end
  end
  user_input
end

def calculate_payment(apr, loan_duration, loan_principal)
  mo_int = (apr / 100) / 12
  loan_dur_mo = (loan_duration[0] * 12) + loan_duration[1]
  mo_payment = loan_principal * (mo_int / (1 - ((1 + mo_int)**(-loan_dur_mo))))
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['ask_name'])
name = gets.chomp
prompt "Hello, #{name}!"

loop do
  apr = nil
  loan_duration = []
  loan_principal = nil

  loop do
    loan_principal = input_data(MESSAGES['loan_amount']).to_f
    apr = input_data(MESSAGES['apr']).to_f
    loan_duration = input_data(MESSAGES['loan_duration'])
    loan_duration = loan_duration.split('/')

    while loan_duration.size < MO_YEAR
      loan_duration.push(0)
    end

    loan_duration.map! { |duration| duration.to_i.to_s == duration ? duration.to_i : 0 }

    confirm_input_message = <<-INF
      Please confirm this information:
      Loan Amount: $#{loan_principal}
      APR = #{apr}%
      Loan Duration: #{loan_duration[0]} years, #{loan_duration[1]} months
      Is this correct? (Y/N)
    INF

    prompt confirm_input_message
    if gets.chomp.downcase == "y"
      prompt(MESSAGES['correct_info'])
      break
    else
      prompt(MESSAGES['incorrect_info'])
    end
  end

  monthly_payment = calculate_payment(apr, loan_duration, loan_principal)
  prompt "Your monthly payment is $#{monthly_payment.truncate(2)}"

  prompt(MESSAGES['another_calculation']) 
  if gets.chomp.downcase != "y"
    prompt(MESSAGES['no_calculation'])
    break
  end
end
