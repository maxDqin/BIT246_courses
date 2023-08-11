print "\n\nEnter your age and press Enter:  "
answer = STDIN.gets
answer.chop!
answer = answer.to_i

result = answer < 18 ? "denied!" : "approved!"
# result = answer >= 18 ? "approved!" : "denied!"
puts "\n\nYour access has been " + result + "\n\n"
