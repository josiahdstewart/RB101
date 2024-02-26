# solicit user and computer input, compare, show winner
require "pry"

VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
COMPARE_CHOICES = { rock: ['scissors', 'lizard'], paper: ['rock', 'spock'], scissors: ['paper', 'lizard'], spock: ['scissors', 'rock'], lizard: ['paper', 'spock'] }
WINNING_SCORE = 3

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

def evaluate_score(score1, score2)
  if score1 == WINNING_SCORE
    prompt "You are the Grand Champion!"
  elsif score2 == WINNING_SCORE
    prompt "Uh oh, you fell off the podium; the computer is the grand champion."
  end
end

player_score = 0
computer_score = 0
loop do
  choice = ''
  while player_score < WINNING_SCORE && computer_score < WINNING_SCORE
    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')}"
      prompt "Type the first two letters of your choice: "
      abr_choice = gets.chomp.downcase

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

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end
    evaluate_score(player_score, computer_score)
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  player_score = 0
  computer_score = 0
end

prompt "Thank you for playing! Good-bye."
