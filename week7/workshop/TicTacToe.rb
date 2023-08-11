#----------------------------------------------------------
# 
# Script Name: TicTacToe.rb
# Version:     1.0
# Author:      Jerry Lee Ford, Jr.
# Date:        March 2010
# 
# Description: This Ruby script is a version of the popular
#              Tic-Tac-Toe game in which two players try to
#              outmaneuver each other by placing three Xs
#              or Os in a row horizontally, vertically, or
#              diagonally.
#
#----------------------------------------------------------


# Define custom classes -----------------------------------

#Define a class representing the console window
class Screen

  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
    puts "\a"   #Make a little noise to get the player's
                #attention
  end

  def pause     #Define a method that pauses the display
                #area DIN.gets  #Execute the STDIN class's gets method to
                #pause script execution until the player
                #presses the Enter key
  end


end

#Define a class representing the Ruby Tic-Tac-Toe game
class Game
 
  #This method displays the game's opening message
  def display_greeting
  
    Console_Screen.cls  #Clear the display area
  
    #Display the game's welcome screen
    puts "\t\t\tWelcome to the Ruby Tic-Tac-Toe Game!" +
      "\n\n\n\n"
    puts "\t\t\t              |       |"
    puts "\t\t\t          X   |       |"
    puts "\t\t\t              |       |"
    puts "\t\t\t        ---------------------"
    puts "\t\t\t              |       |"
    puts "\t\t\t          O   |   X   |   O"
    puts "\t\t\t              |       |"
    puts "\t\t\t        ---------------------"
    puts "\t\t\t              |       |"
    puts "\t\t\t              |       |   X"
    puts "\t\t\t              |       |"
    print "\n\n\n\n\nPress Enter to continue. "
  
    Console_Screen.pause       #Pause the game

  end
 
  #Define a method to display the game board and collect
  #player moves
  def display_game_board(player)
   
    move = ""  #Assign a default value
   
    loop do  #Loop forever
      
      Console_Screen.cls  #Clear the display area
  
      #Display the game board
      puts "\t\t\tWelcome to the Ruby Tic-Tac-Toe Game! " +
        "\n\n\n\n"
      puts "\t\t\t          1       2       3\n" 
      puts "\t\t\t              |       |"
      puts "\t\t\t     A    #{$A1}   |   #{$A2}   |   #{$A3}"
      puts "\t\t\t              |       |"
      puts "\t\t\t        ---------------------"
      puts "\t\t\t              |       |"
      puts "\t\t\t     B    #{$B1}   |   #{$B2}   |   #{$B3}"
      puts "\t\t\t              |       |"
      puts "\t\t\t        ---------------------"
      puts "\t\t\t              |       |"
      puts "\t\t\t     C    #{$C1}   |   #{$C2}   |   #{$C3}"
      puts "\t\t\t              |       |"
      
      #Prompt the player to enter a move
      print "\n\n\n\n\nPlayer " + player + "'s turn. " +
        "Please enter your move: "
    
      move = STDIN.gets  #Collect the player's move
      move.chop!  #Remove the end of line marker
      move = move.upcase  #Convert to uppercase

      #Terminate the loop if a valid move was entered
      if move.length == 2 then  #Must be at 2 character long
        if move =~ /[A-C][1-3]/i  #Must be A1, A2, A3, B1, 
                                  #B2, B3, C1, C2, or C3
          #Call method responsible for determining if the 
          #board square was available 
          validMove = validate_player_move(move)        
          if validMove == true  #The move was valid 
            break  #Terminate the execution of the loop
          end
        end
      end

    end
    
    return move  #Return the player's move back to the
                 #calling statement
   
  end
 
  #Define a method that determines if the square selected by
  #the player is still available
  def validate_player_move(move)
    
    #Return a value of false is the square has already been
    #selected
    return false if move == "A1" && $A1 != " "
    return false if move == "B1" && $B1 != " "
    return false if move == "C1" && $C1 != " "
    return false if move == "A2" && $A2 != " "
    return false if move == "B2" && $B2 != " "
    return false if move == "C2" && $C2 != " "
    return false if move == "A3" && $A3 != " "
    return false if move == "B3" && $B3 != " "
    return false if move == "C3" && $C3 != " "    
  
    #Return a value of true if the square is available
    return true
  
  end
 
  #Define a method to be used to display game instructions
  def display_instructions
    
    Console_Screen.cls       #Clear the display area
    
    puts "INSTRUCTIONS:\n\n"  #Display a heading

    #Display the game's instructions
    puts "In the Ruby Tic-Tac-Toe game, Player X and " +
      "Player O try to "
    puts "outmaneuver each other by placing three Xs or " +
      "Os in a row "
    puts "horizontally, vertically, or diagonally. " +
      "Player X goes first. "
    puts "The game ends when either player claims three " +
      "squares in a " 
    puts "row or when all nine squares have been claimed " +
      "without either "
    puts "player managing to claim three squares in a row."
    puts "\n\n\n\n\n\n\n\n\n\n\n"
    print "Press Enter to continue. "

    Console_Screen.pause       #Pause the game
    
  end
 
  #Define a method to control game play
  def play_game

    player = "X"  #Make Player X the default player for each
                  #new game
    
    noOfMoves = 0  #Reset the value of the variable used to
                   #keep track of the total number of moves
                   #made in a game

    #Clear out the game board to get it ready for a new game
    clear_game_board

    loop do  #Loop forever

      Console_Screen.cls       #Clear the display area
    
      #Call on the method that displays the game board and
      #collects player moves
      square = display_game_board(player)
    
      #Assign the selected game board square to the player
      #that selected it
      $A1 = player if square == "A1" 
      $A2 = player if square == "A2" 
      $A3 = player if square == "A3" 
      $B1 = player if square == "B1" 
      $B2 = player if square == "B2" 
      $B3 = player if square == "B3" 
      $C1 = player if square == "C1" 
      $C2 = player if square == "C2" 
      $C3 = player if square == "C3"     

      #Keep count of the total number of moves that have
      #been made
      noOfMoves += 1

      #Call on the method that is responsible for 
      #determining if the game has been won
      winner = check_results(player)
    
      #See is player X has won
      if winner == "X" then
        #Call on the method that displays the game final
        #results
        display_game_results("Player X Wins!")
        break  #Terminate the execution of the loop
      end
    
      #See if player O has won
      if winner == "O" then
        #Call on the method that displays the game final
        #results
        display_game_results("Player O Wins!")
        break  #Terminate the execution of the loop
      end    
    
      #See if the game has ended in a tie
      if noOfMoves == 9 then
        #Call on the method that displays the game final
        #results
        display_game_results("Tie")
        break  #Terminate the execution of the loop
      end
    
      #If the game has not ended, switch player turns and
      #keep playing
      if player == "X" then
        player = "O"
      else
        player = "X"
      end
    
    end
    
  end

  #Define a method that is responsible for clearing out the
  #game board
  def clear_game_board
    
    #Assign a blank space to each game board square    
    $A1 =  " "
    $A2 =  " "
    $A3 =  " "
    $B1 =  " "
    $B2 =  " "
    $B3 =  " "
    $C1 =  " "
    $C2 =  " "
    $C3 =  " "
    
  end

  #Define a method to examine the game board and determine
  #if the current player has won the game
  def check_results(player)
    
    winner = ""  #Assign a default value
    
    #Check vertically
    winner = player if $A1 == player && $A2 == player &&
      $A3 == player
    winner = player if $B1 == player && $B2 == player &&
      $B3 == player
    winner = player if $C1 == player && $C2 == player &&
      $C3 == player

    #Check horizontally
    winner = player if $A1 == player && $B1 == player &&
      $C1 == player
    winner = player if $A2 == player && $B2 == player &&
      $C2 == player
    winner = player if $A3 == player && $B3 == player &&
      $C3 == player
    
    #check diagonally
    winner = player if $A1 == player && $B2 == player &&
      $C3 == player    
    winner = player if $A3 == player && $B2 == player &&
      $C1 == player    
    
    return winner  #Return the result back to the calling
                   #statement
    
  end

  #Define a method that will be used to displays the game's
  #final result
  def display_game_results(message)
    
      Console_Screen.cls  #Clear the display area
  
      #Display the results of the game
      puts "\n\n\n"
      puts "\t\t\t     Game Over: " + message + "\n\n\n"
      puts "\t\t\t          1       2       3\n" 
      puts "\t\t\t              |       |"
      puts "\t\t\t     A    #{$A1}   |   #{$A2}   |   #{$A3}"
      puts "\t\t\t              |       |"
      puts "\t\t\t        ---------------------"
      puts "\t\t\t              |       |"
      puts "\t\t\t     B    #{$B1}   |   #{$B2}   |   #{$B3}"
      puts "\t\t\t              |       |"
      puts "\t\t\t        ---------------------"
      puts "\t\t\t              |       |"
      puts "\t\t\t     C    #{$C1}   |   #{$C2}   |   #{$C3}"
      puts "\t\t\t              |       |"
      print "\n\n\n\n\nPress Enter to continue. "
      
      Console_Screen.pause       #Pause the game
  
  end

  #This method displays information about the Ruby 
  #Tic-Tac-Toe game
  def display_credits
  
    Console_Screen.cls  #Clear the display area
  
    #Thank the player and display game information
    puts "\t\t  Thank you for playing the Ruby " +
      "Tic-Tac-Toe game.\n\n\n\n"
    puts "\n\t\t\t Developed by Jerry Lee Ford, Jr.\n\n"
    puts "\t\t\t\t  Copyright 2010\n\n"
    puts "\t\t\tURL: http://www.tech-publishing.com\n\n" +
      "\n\n\n\n\n\n\n\n"

  end

end


# Main Script Logic ---------------------------------------

Console_Screen = Screen.new  #Instantiate a new Screen
                             #object
TTT = Game.new  #Instantiate a new Game object

#Execute the Game class's display_greeting method
TTT.display_greeting

#Execute the Game class's clear_game_board method
TTT.clear_game_board

answer = ""  #Initialize variable and assign it an empty
             #string

#Loop until the player enters y or n and do not accept any
#other input
loop do

  Console_Screen.cls  #Clear the display area

  #Prompt the player for permission to start the game
  print "Are you ready to play Ruby Tic-Tac-Toe? (y/n): "

  answer = STDIN.gets  #Collect the player's answer
  answer.chop!  #Remove the end of line marker

  #Terminate the loop if valid input was provided
  break if answer =~ /y|n/i 

end 

#Analyze the player's answer
if answer == "n"  #See if the player want to quit

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play the game some other
  #time
  puts "Okay, perhaps another time.\n\n"

else  #The player wants to play the game

  #Execute the Game class's display_instructions method
  TTT.display_instructions

  playAgain = ""  #Initialize variable and assign it an
                  #empty string

  loop do  #Loop forever
       
    #Execute the Game class's play_game method
    TTT.play_game

    loop do  #Loop forever

      Console_Screen.cls  #Clear the display area
      #Find out if the player wants to play another round
      print "Would you like to play another round? (y/n): "

      playAgain = STDIN.gets  #Collect the player's
                              #response
      playAgain.chop!  #Remove the end of line marker
  
      #Terminate the loop if valid input was provided
      break if playAgain =~ /n|y/i
  
    end
  
    #Terminate the loop if valid input was provided
    break if playAgain =~ /n/i
  
  end
  
  #Call upon the Game class's determine_credits method
  TTT.display_credits
  
end
