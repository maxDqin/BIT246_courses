#Calling required Gems
require 'search_in_file'
# require 'docx'
# require 'pdf-reader'

class SeachingClass # Class Name

  def initialize(path, term)
    # constructor
    @path = path
    @term = term

    #Two Arrays to store Files and Results
    @arrayFiles = Array.new
    @arrayResult = Array.new
  end


  def check
    #check the current directory existence
    # If the directory exist it will creates an array with matching file extensions
    if File.exist?(@path) then
      Dir.chdir(@path) #changes the directory path
      @arrayFiles = Dir.glob("**/*.{txt,doc,docx,pdf}") # matches all the file with extension txt,doc,docx,pdf
    else
      #If the directory doesnt exist it will print not found
      puts "#@path not found"
    end
  end


  def searchForContent # Search – Main logic
    # for each file in the file array check if the file contains the required term

    # if it contains the required term
    #Add the array element into result array using the filename as
    #a parameter
    @arrayFiles.each do |file|
      @count = 0 #To store the number of entered terms present in a file
      @total = 0 ##To store the total number of words present in a file
      # Using Search in File to get Required term
      # Case insensitive is achieved by changing the code in gem search_in_file in line 30
      # i.e In line 30 changing the p.include?(term) into  p=~/#{term}/i
      #The output received is array of hash of filename and term
      res_hash = SearchInFile.search("#@path/#{file}", @term)
      # The number of elements should be greater than 1 inorder the code to execute
      if res_hash.size > 0 then
        # Storing the file name in local variable file_name by calling the array of hash with its name,
        # index and parameter i.e res_hash[0][:file], the array index is 0 as there is always one hash inside
        # an array. file and paragraphs are  the keys of hash which we can access in hash
        file_name = res_hash[0][:file] #To get the file name with the help of key 'file'
        file_paragraphs = res_hash[0][:paragraphs] # To get the name of paragraphs with the help of key 'paragraphs'
        file_paragraphs.each do |line|
          #Moves to each line
          line.split.each do |word|
            #Moves to each word
            words = word.gsub(/\W/, '') #REmoves all non-alphanumeric character
            @total = @total + 1 # for every word in a file total increases by one
            if words =~ /#@term/i # Checks if the word matches the term inside the file
              @count = @count + 1 #And if it matches the count will increases by one
            end
          end


        end

        @portion = (@count.to_f / @total.to_f) * 100 #To calculate portion
        @portions = @portion.round(2) # to round off portion with only two decimal digits
        #Array containing the result
        @arrayResult << "In #{file_name} \n The total number of word is #@total\n The total number of word #@term is #@count \n The portion is #@portions %\n\n\n"

      end

    end


  end


  def printFile # To print the result
    @total_len = @arrayFiles.length #To get total number of files present in the directory
    @res_len = @arrayResult.length #To get total number of matching files in the directory
    #  print out the result Array with proper messages
    puts "Out of #@total_len files, #@res_len has word '#@term'"
    puts @arrayResult

  end
end

#MAIN LOGIC
# puts "Enter the term"
# terms = gets.chomp! # To get the required term
# puts "Enter the path"
# paths = gets.chomp! # to get the required path
# search = SeachingClass.new(paths, terms) #Instansiating new SearchingClass object
# #Calling the methods
# search.check
# search.searchForContent
# search.printFile

puts SearchInFile.search_in_directory("./Sailesh/test.docx", "Ruby" )
puts SearchInFile.search("./Sailesh/test.docx", "Ruby" )
puts SearchInFile.search_in_file("./Sailesh/test.docx", "Ruby" )
