# solicit user and computer input, compare, show winner
VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
COMPARE_CHOICES = {rock: ['scissors', 'lizard'], paper: ['rock', 'spock'], scissors: ['paper', 'lizard'], spock: ['scissors', 'rock'], lizard: ['paper', 'spock']}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  COMPARE_CHOICES[first.to_sym].include?(second)
end

def abr_to_full(abbreviated)
  full_choice = ""
  VALID_CHOICES.each do |choice|
    if choice.start_with?(abbreviated)
      full_choice = choice
      break
    end
  end
  full_choice
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
    prompt "Type the first two letters of your choice: "
    abr_choice = gets.chomp
    
    choice = abr_to_full(abr_choice)

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
