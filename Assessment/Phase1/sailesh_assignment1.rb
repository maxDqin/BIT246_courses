$totalCost =0

# Define custom classes

#Define a class representing the console window
class Screen

  def cls  #Define a method that clears the display area
    puts ("\n" * 5)  #Scroll the screen 25 times
    puts "\a"  #Make a little noise to get the Customers's attention
  end

  def pause    #Define a method that pauses the display area
    STDIN.gets  #Execute the STDIN class's gets method to pause script
    #execution until the Customer presses the enter key
  end

end

#Define a class representing the Ruby Number Guessing Game
class Display

  #This method displays the game's opening screen


  #Define a method to be used to present game instructions
  def display_greetings

    Console_Screen.cls       #Clear the display area
    puts "WELCOME TO LOCAL FRAMING STORE:\n\n"  #Display a welcome message
    puts " PRESS ENTER TO CONTINUE"
    Console_Screen.pause       #Pause the screen until the customers hit enter

  end



  #Define a method to be used to get required information from Customers
  def cus_order
    # It is used to get the present date
    require 'date'
    odate=Date.today
    #Replaces all '-' in date with empty string
    odates=odate.to_s.gsub("-", "")
    # It is used to get the present date and time
    t=Time.now
    time=t.to_s.gsub(/\W/, '')
    randomNo = 1 + rand(1000)

    # Converting $totalcost to float
    $totalCost=$totalCost.to_f




    #Clear the display area
      Console_Screen.cls

      #Takes customer name
      puts "Enter your Name"
      cusname=STDIN.gets
    #Clear the display area
      Console_Screen.cls
      #Takes customer address
      puts "Enter your Address "
      cusadd=STDIN.gets
    #Clear the display area
      Console_Screen.cls
    #Takes customer's choice of frame length
      puts "Enter the lenght of the frame in inches "
      frame_len=STDIN.gets
      frame_len=frame_len.to_f
    #Clear the display area
      Console_Screen.cls
    #Takes customer's choice of frame width
      puts "Enter the width of the frame in inches "
      frame_wid=STDIN.gets
      frame_wid=frame_wid.to_f
    #Clear the display area
      Console_Screen.cls
    #Calculating the perimeter of rectangle which is 2(l+b)
      totallength=2*(frame_len+frame_wid)
    #Takes customer's choice of frame color
      puts "Enter 'y' to color the frame or 'n'to leave it white"
      answer=STDIN.gets
      answer.chop!
      if
      answer=="y"
        puts"Choose the color of the frame"
        frame_color=STDIN.gets
        $totalCost=totallength.to_f*0.10
      else
        $totalCost=$totalCost
      end
      Console_Screen.cls
    #Takes customer's choice of frame type
      puts "Choose a frame, Type 'f' for fancy or 'r' for regular "
      frame_type=STDIN.gets
    #Removes any extra character appended aat the end of the screen
      frame_type.chop!
      if frame_type =="f"
        $totalCost=$totalCost.to_f+(totallength.to_f*0.25)
      elsif
      frame_type=="r"
        $totalCost=$totalCost.to_f+(totallength.to_f*0.15)
      end
      Console_Screen.cls
    #Takes customer's choice of frame Crowne
      puts "Press 'y' to add Crowne 'n' to avoid it "
      frame_crown=STDIN.gets
      frame_crown.chop!
      if frame_crown=="y"
        puts "Enter the number of Crowne"
        number_crown= STDIN.gets
        number_crown.chop!
        number_crown.to_f #Converts into float value
        $totalCost=$totalCost.to_f+(0.35*number_crown.to_f) #Calculation for cost
      elsif frame_crown=="n"
        $totalCost=$totalCost
      end
      Console_Screen.cls #Clears the display Area
    #Ask Customer to confirm the order
      puts"Do u wish to confirm your order"
      puts" Press 'y' to confirm or 'n' to cancel"
      confirmord= STDIN.gets
      confirmord.chop!# removes any extra character appended at the end

      if confirmord=='y'# if Customer wish to confirm
        #Creates the folder with name format Order<date> e.g. Order202020726
        if File.exist?("Order#{odates}") then #checks if the folder already exist
          puts "Order#{odates} folder found."
        else
          puts "Order#{odates} folder created."
          Dir.mkdir("Order#{odates}")# Creates the folder with name Order<date> if that folder doesnt exist
        end
        #Create a new file with name (Order+Randomno+DateTimestamp+YourStudentID.txt
        # e.g. Order118062020114012345678.txt) in a folder name “Orders<Date>”
        #  And Writes Name and Student ID on a file
        outfile=File.new( "Order#{odates}/Order#{randomNo}#{time}S1500231.txt","w")
        outfile.puts"students KHADKA \t\t SudentID:15001231"
        outfile.close
        #Append all the Customers information on the same file created
        outfile=File.new( "Order#{odates}/Order#{randomNo}#{time}S1500231.txt","a")
        outfile.puts"\n\n\n\nCustomer Name:\t\t#{cusname}"
        outfile.puts"Customer Address:\t\t#{cusadd}"
        outfile.puts"Length:\t\t#{frame_len}"
        outfile.puts"Width:\t\t#{frame_wid}"
        outfile.puts"Color:\t\t#{frame_color}"
        outfile.puts"Crown:\t\t#{frame_crown}"
        outfile.puts"Number of Crown:\t\t#{number_crown}"
        outfile.puts"Total Cost:\t\t #$totalCost"

        outfile.close




      elsif if confirmord=='n'
          puts" Thank you or your time, You can order anytime in the future if you wish to "



        end
      end



  #This method displays the information about the Ruby Number Guessing Game
  def display_output

    Console_Screen.cls  #Clear the display area

    #Thank the player and display game information
    puts "\t\tThank you for your time.We have received your order\n\n\n\n"

  end

end


# Main Script Logic -------------------------------------------------------

Console_Screen = Screen.new  #Instantiate a new Screen object
  DS = Display.new                #Instantiate a new Game object

#Execute the Game class's display_greeting method
  DS.display_greetings


    #Execute the Game class's cus_order method
    DS.cus_order

    Console_Screen.cls  #Clear the display area


    DS.display_output
  end