#you develop a script that will run on different operating systems, you will need a way 
#to determine which type of operating system your script is currently executing on. 
#One way to do this is by taking advantage of Rubys RUBY_PLATFORM special variable

if RUBY_PLATFORM =~ /w32$/ then
  INPUTDIR ="C:\\Ruby\\"
else
  INPUTDIR ="../workshop/"
end
#puts RUBY_PLATFORM
#puts INPUTDIR


## For this exercise, we will list the names of the files (only text files) in directory
##the File class handles files, directories are handled with the Dir class.


#a check is made to determine whether a INPUTDIR folder exists or not
if File.exist?(INPUTDIR)  then
  #
  #Dir.entries returns an array with all the entries within the specified directory. Dir.foreach provides the same feature
  #
  Dir.foreach(INPUTDIR) do |entry|
   
   ## if the file is a text file - String ends with '.txt'
   if entry =~ /\.rb$/  then
      puts entry
   end


  end
end

