def help
  puts "You can input any of the following commands:
  - help: Prints out a list of commands
  - exit: Exits from program"
end

def random_num
  return rand(1..6)
end

def run_guessing_game
  help
  puts "Guess a number between 1 and 6."
  number = random_num
  users_input = gets.chomp

  while users_input do
    if users_input == "exit"
      puts "Goodbye!"
      break
    elsif users_input.to_i == number
      puts "You guessed the correct number!"
    elsif users_input == "help"
      help
    else
      puts "The computer guessed #{number}."
    end

    puts "Guess a number between 1 and 6."
    number = random_num
    users_input = gets.chomp
  end
end
