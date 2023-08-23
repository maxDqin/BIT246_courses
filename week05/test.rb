# if "Welcome to New York Harbor, USA." =~ /USA/ then
#   puts "Welcome to America!"
# end
#
# if "Welcome the USA!." =~ /USA|America/ then # F|Female
#   puts "We have a match!"
# end
# #
# if "Remember to Aall your mother." =~ /(t|c|w|a)all/ then
#   puts "We have a match!"
# end
#
# if "ab.c" =~ /ab\.c/ then
#   puts "It's a match!"
# end
#
# if "I am b." =~ /[a-zA-Z]/ then #
#   puts "We have a match0!"
# end
# #
# if "Type your name (and press Enter):" =~ /press Enter)/ then
#   print "We have a match1!"
# end
#
# if "I am Jerry. My brother is Mr. Ford." =~ /F\.rd\.$/ then
#   print "We have a match!"
# end


#
# if "I am Jerry. My bruaaer is Mr. Ford." =~ /b.\...er/ then
#   print "We have a match!"
# end
#
# if "I am Jerry. My brother is Mr. Ford." =~ /^My name/ then
#   print "We have a match2!"
# end

# if "I am Jerry. My brother is Mr. Ford." =~ /Ford\.$/ then
#   print "We have a match!"
# end

#
# if "fdgfdf....r" =~ /f*r/ then
#   print "We have a match3!"
# end
#
# if "I am Jerry.  is Mr. Ford." =~ /Mrs?/ then
#   print "We have a match4!"
# end
#
# if "ffffffffr" =~ /g*r/ then
#   print "match"
# end

# if "Welcome to New York Harbor, UsA." =~ /usa/i then
#   puts "Welcome to America!"
# end
# #
# x = "Once upon a time there was a small boy who climbed a small tree."
# puts x.sub("small", "big")
# puts x.sub(/\s/, "-")

#
x = "Once upon a time, there was a sm7ll boy who climbed a small tree."
# puts x.gsub("small", "big")
puts x.gsub(/sm.l/, "-")
# puts
#
# puts x
# puts x.gsub!("small", "big")
# puts x
# puts x.gsub("small", "big")
# puts x
# puts x
# puts
#
# if "Please enter a vowel and press Enter: " =~ /[aeiou]/ then
#   puts "match"
# end
#
# print "Please enter a vowel and press Enter: "
# input = STDIN.gets
# input.chop!
#
# if input =~ /[aeiou]/ then # /[aeiou]/ is equvilent to /a/, /e/, /i/, /o/ /u/
#                            # /a|e|i|o|u/
#   puts "You submitted string contains vowels."
# end
totalScore = 100

puts "Game over. Your score is " + totalScore.to_s