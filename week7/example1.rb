# begin
#   puts x
# rescue
#   # No actions define
# end
# x = 0
# puts x
# x = 0
# begin
#   puts x
# rescue
#   puts "x is not defined"
# end

begin
  x = 0
  puts x.class
  puts 3/x
rescue => e
  puts "\n\nSorry. An error has occurred. Please report " +
           "the following"
  puts "error information to the help desk.\n\n"
  puts "ERROR CLASS: " + e.class.to_s
  # puts "ERROR MESSAGE: " + e
end