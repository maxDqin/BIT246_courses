# Q1. Searching for a keyword/phrase in a file.

def search_keyword(file_name)
  match_found = false

  # iterating the file object line by line
  File.open(file_name).each_line do |line|
    # looking for a regex match in each line
    # and setting the "match_found" variable to true if match found
    match_found = true if /a\slittle\sboy/ =~ line
  end

  if match_found
    # if "match_found" is set to true, read and return file content
    File.read(file_name)
  else
    # else return this string
    'No match found'
  end
end

# A variable to store the filename as a string
file_name = 'test_folder_s1478212\story1478212.txt'

# Verifying that the file exists
if File.exist?(file_name)
  # Passing the filename to the above function as a parameter and displaying the return result
  puts search_keyword(file_name)
else
  # If the file does not exist, displaying an error message
  puts 'Error: The file does not exist.'
end
