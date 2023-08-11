puts "Enter the folder name: "
folder =STDIN.gets
folder.chop!

puts "Enter path directory to the folder: "
path=STDIN.gets
path.chop!

#check whether the given directory exists
if File.exist?(path) then
  #changing the current working directory to user given directory if it exists
  Dir.chdir(path)

  #going through each and every file in the directory
  Dir.foreach(folder) do |x|
    #check if there are text files in the user given directory
    if x =~ /[\.rb$ | \.txt]/ then
      #changing the value of 'fileCheck', if a  file has been found

      puts x

      #printing a message if there aren't any folder in the directory


    end


  end
else
  folder ==0
  puts "The folder that you are looking for is not inside this directory!"
end