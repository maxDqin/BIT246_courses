puts "\nWelcome to the vacation calculator!\n\n"

print "How many years have you worked for the company? \n\n: "
answer = STDIN.gets
answer.chop!
answer = answer.to_i
# puts answer.between?(1, 5)
case
when (answer.between?(1, 5))
  puts "You are entitled to 1 week of vacation per year."
when (answer.between?(6, 10))
  puts "You are entitled to  2 weeks of vacation per year."
when (answer.between?(11, 30))
  puts "You are entitled to 3 weeks of vacation per year."
else
  puts "You are entitled to 5 weeks of vacation per year."
end


