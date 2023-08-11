begin
  puts x
rescue NameError
  puts "An name error has occurred!"
rescue ArgumentError
  puts "Incorrect use of arguments!"
rescue RangeError
  puts "A range error has occurred!"
rescue
  puts "Unexpected error!"
end

