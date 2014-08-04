# ken mcfadden : Tealeaf Academy course 1
# Assignment     :  Create a Paper, Rock, Scissors command line game.
#  
#  1. Welcome user to the game, and explain the rules.
#  2. Start the game.
#  3. Accept input, validate, and display results.
#  4.  Allow user to continue game or exit.

#   Recap of rules since i don't know them> Rock beats (smashes) scissors, scissors beats(cuts) paper, and paper beats(covers) rock.

   quit = ""
choice_hash = {'p' =>'Paper', 'r'=>'Rock', 's' =>'Scissors'}

winning_combos =  {'rs' => 'Rock smashes Scissors', 'sp' => 'Scissors cut Paper', 'pr' => 'Paper covers Rock'}

puts "Welcome to the the ruby Rock, Paper, Scissors game."
puts "Here are the rules :  Rock smashes scissors, scissors cuts paper, and paper covers rock."
puts "You will go first with your choice, and the the computer will randomly makes it's choice."
puts " Choices are R for rock, P for paper, and S for scissors."


while quit != "q"

  puts "Are you Rock, Paper, or Scissors?"
  user_input = gets.chomp.downcase
    if user_input == 'q'
      quit = user_input
    end

  if choice_hash.has_key?(user_input)
    puts " You entered : #{user_input} for #{choice_hash[user_input]}"
    puts "Now it's the computers turn to pick...Press enter to allow the computer to play, and ask yourself..Do you feel lucky..punk?"
    wait = gets
    else
    puts "You must enter either one of p, r, or s..or q to quit if you are being humiliated."
    next
  end

  computer_input = choice_hash.keys.sample
  puts "The computer has randomly chosen #{computer_input} for #{choice_hash[computer_input]}."


  # Check for tie
    if user_input == computer_input
      puts "It's a tie game.  You chose #{user_input} and the computer chose #{computer_input}. You have dodged a bullet."

    else

      # Determine da winner:
      uservscomputer = user_input + computer_input
      computervsuser = computer_input + user_input

       if winning_combos.has_key?(uservscomputer)
         puts "You have won because #{winning_combos.fetch(uservscomputer)}!"
       else
         puts "You have been humiliated because #{winning_combos.fetch(computervsuser)}!"
       end

    end


   puts "Would you like to play another game?  Do you dare challenge this bundle of wires and plastic?  Press any key for Yes, or enter q to quit."

    play_again = gets.chomp.downcase
      if play_again == "q"
       quit = play_again
      end


end

puts "Sayanora as they say in Japan homeboy!"
