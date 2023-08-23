# p32
# if File.directory?("TestDirectory") then
#   puts "It's a folder."
# else
#   puts "It is something else."
# end

# p33
# if File.exist?("TestDirectory") then
#   puts "It's a folder."
# else
#   puts "TestDirectory folder created."
#   Dir.mkdir("TestDirectory")
# end
#
# p34
# if File.file?("Hello.txt") then
#   puts "It's a file."
# else
#   puts "It is something else."
# end
#
# p35
# puts 'File Hello.txt is ' + File.size('Hello.txt').to_s + ' bytes in size.'

# p36
# puts Dir.entries('.').inspect
#
# p37
# puts Dir.glob('*') # shows list of content of current folder
# puts Dir.glob( '**/*') # shows list of content of current and subfolders folders (recursively), refer to https://rubyapi.org/3.2/o/dir#method-c-glob
# puts Dir.glob('*/*')
# puts Dir.glob('*.rb')
# puts Dir.glob('*/*.rb')

# p38
# if !File.exist?("TestDirectory") then
#   Dir.mkdir("TestDirectory")
# end

# p39
# Dir.delete('TestDirectoryd')

# p43
# puts RUBY_PLATFORM

# p44
# if RUBY_PLATFORM =~ /win32/
#   puts "We're in Windows!"
# elsif RUBY_PLATFORM =~ /linux/
#   puts "We're in Linux!"
# elsif RUBY_PLATFORM =~ /darwin/
#   puts "We're in Mac OS X!"
# elsif RUBY_PLATFORM =~ /freebsd/
#   puts "We're in FreeBSD!"
# else
#   puts "We're running under an unknown operating system."
# end

# p48
# outFile = File.new("Demo.txt", "w")
# outFile.puts "Ho Ho Ho"
# outFile.puts "Merry Christmas!"
# outFile.close
#
# p50
# outFile = File.new("Demo.txt", "a")
# outFile.puts "And a happy new year!"
# outFile.close
#

# p52
# File.new("Demo.txt", "r").each do |line|
#   puts line
# end
#
# p52
# inputFile = File.new("Demo.txt", "r")
# puts inputFile.gets
# puts inputFile.gets(3)
# puts inputFile.gets
# inputFile.close

# p53
# inputFile = File.read('Demo.txt')
# puts inputFile

# p54
inputArray = File.readlines("Demo.txt")
inputArray.each do |line| # line = "Merry Christam"
  puts line
end
