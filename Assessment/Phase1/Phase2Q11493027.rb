require 'rubyXL'
# Display the introduction to the assignment
puts ("\n" * 25)  #Scroll the screen 25 times
puts "\a" #Make "beep" sound to get user attention
puts "Hi, this piece is phase 2 of assignment 2 that has been done by Thanh Hung Nguyen."

#Promt user to press Enter
puts "Press Enter to continue:"
STDIN.gets #Pause the display area until user press Enter

puts ("\n" * 25)  #Scroll the screen 25 times


#Promt user to press Enter
puts "Please enter the term/word/phrase that you're looking for:" #Display the request
input1 = STDIN.gets #Collect the user input
input1.chop! #Remove any extra characters appended to the string

puts ("\n" * 25)  #Scroll the screen 25 times

puts "Please enter the directory that you want to do the search:" #Display the request
input2 = STDIN.gets #Collect the user input
input2.chop! #Remove any extra characters appended to the string

puts ("\n" * 25)  #Scroll the screen 25 times

#Processing
if (Dir.exist?(input2))

  Dir::chdir(input2)
  file_num = Dir["*.xlsx"].length
  folderContent = Dir["*.xlsx"]


  i = 0
  a = 0
  c = 0
  while i < file_num do

    workbook = RubyXL::Parser.parse(folderContent[i])
    worksheets = workbook.worksheets

    worksheets.each do |worksheet|
      puts "Reading: #{folderContent[i]}"
      worksheet.each do |row|
          row_cells = row.cells.map{ |cell| cell.value }

          if (row_cells.include?(input1))

            puts row_cells.inspect
            a = a + 1
          end
      end

    end
    if (a > 0)
      puts "The given word/term/phrase: (#{input1}) have been found in #{a} row(s) of the file named #{folderContent[i]}"
      puts "\n"
      c = c + 1
    end
    a = 0

    i=i+1
  end
  puts "THERE ARE #{c} DOCUMENT(S) CONTAINING THE GIVEN WORD,TERM,PHRASE!!!"
else
  puts "Directory cannot be found!"
end
