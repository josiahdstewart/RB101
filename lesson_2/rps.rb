# solicit user and computer input, compare, show winner
VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
COMPARE_CHOICES = {rock: ['scissors', 'lizard'], paper: ['rock', 'spock'], scissors: ['paper', 'lizard'], spock: ['scissors', 'rock'], lizard: ['paper', 'spock']}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  COMPARE_CHOICES[first.to_sym].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won"
  else
    prompt "It's a tie!"
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; computer chose: #{computer_choice}"

  display_result(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing! Good-bye."
