
begin
  fileName = STDIN.gets
  fileName.chop!
  file = open(fileName)
  puts "\n" + fileName + " found. Contents:\n\n"
  puts File.read(fileName)
rescue
  puts "no such file, and please input another file"
  retry
end

