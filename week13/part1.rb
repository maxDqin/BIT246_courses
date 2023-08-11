# # output in Ruby
# # page 2
# puts "puts works"
# puts " with line breaks"
#
# print "print works"
# print " with no line breaks"
#
# printf("\n\nprintf formats numbers like %7.2f, and strings like %s.", 3.1415, "me")
#
# # page 3
# puts "What is your name?"
# $name = STDIN.gets
# puts "Hi "+$name +"."
#
# puts "What is your name?"
# $name = STDIN.gets
# $name = $name.chomp!
# puts "Hi " + $name + "."

# page 6
# a, b, c = 1, 2, 3
# c = (a == b)
# puts c

# i = 0; j = 1
# puts "i = #{i}, j=#{j}"
# i,j = j,i
# puts "i = #{i}, j=#{j}"
# #
# def test(a=1,b=2,*c)
#   puts "#{a},#{b}"
#   c.each{|x| print " #{x}, "}  # =>9,  12,  15,  18,
# end
# test 3, 6, 9, 12, 15, 18,9,0
def test(a ,b=2,c=a+b)
  puts "#{a},#{b},#{c}"
end
test
test 5
test 4,6
test 4, 6, 9