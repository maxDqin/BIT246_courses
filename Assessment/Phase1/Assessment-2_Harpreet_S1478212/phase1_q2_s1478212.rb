# Q2. Prompt the user to type the path and display folder's contents

puts 'Enter path: '
# Asking the user to type a directory path and removing the newline character with "chomp"
path_s1478212 = gets.chomp

if File.directory?(path_s1478212)
  # checking where the path exists
  puts 'Success! The directory path exist.'
  print "Press 'Enter' to view content: "
  # getting user's response
  user_response = gets
  if user_response == "\n"
    # if user pressed 'Enter', displaying directory content
    puts Dir.entries(path_s1478212)
  else
    # if user pressed any other key, exiting program
    puts 'Exiting...'
    exit
  end
else
  # if directory path does not exist, displaying error message
  puts 'Harpreet Singh - s1478212 : Error! The directory path does not exists.'
end
