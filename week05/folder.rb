# if File.directory?("Demo.txt") then
#   puts "It's a folder."
# else
#   puts "It is something else."
# end

# #
# if File.exist?("TestDirectoryy") then
#   puts "TestDirectory folder found."
# else
#   puts "TestDirectory folder created."
#   Dir.mkdir("TestDirectoryy")
# end
#
# puts
#
# if File.file?("customer.rb") then
#   puts "It's a file."
# else
#   puts "It is something else."
# end
#
#
# puts "File Hello.txt is " + File.size("customer.rb").to_s + " bytes in size."

# puts
#
# puts Dir.entries(".")
#
# puts
# puts Dir.glob("*.rb")
# puts Dir.glob( "**/*")
#

# File.delete('de.rb')

# puts
#
# puts RUBY_PLATFORM

# outFile = File.new("Demo.txt", "a")
# outFile.puts "Ho Ho Ho"
# outFile.puts "Merry Christmas!"
# outFile.close
#
# outFile = File.new("Demo.txt", "a")
# outFile.puts "And a happy new year!"
# outFile.close
#
# puts
#
# File.new("Demo.txt", "r").each do |line| puts line
# end
#
# puts
#
# inputFile = File.new("Demo.txt", "r")
# puts inputFile.gets
# puts inputFile.gets
# puts inputFile.gets
# puts inputFile.gets
# inputFile.close
#
inputArray = File.readlines("./week05/Demo.txt")
inputArray.each do |line| # line = "Merry Christam"
  puts line
end
