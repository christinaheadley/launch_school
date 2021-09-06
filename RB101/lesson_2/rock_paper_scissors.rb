VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  first == "paper" && second == "rock" ||
    first == "scissors" && second == "paper" ||
    first == "rock" && second == "scissors"
end

def display_results(computer, player)
  if computer == player
    prompt("It's a tie")
  elsif win?(player, computer)
    prompt("You win!")
  else
    prompt("The computer wins. You lose.")
  end
end
choice = ''
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid choice. Try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose #{choice}; computer chose #{computer_choice}."

  display_results(computer_choice, choice)

  prompt("Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for playing. Goodbye!")
