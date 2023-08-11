# https://mixandgo.com/learn/ruby-blocks

# A ruby block is one or more lines of code that
# you put inside the do and end keywords (or { and } for inline blocks).
# It allows you to group code into a standalone unit that you can use as a method argument.
puts "*"*50
[1,2,3].each do |n|
  puts "Number #{n}"
end

# one thing to note is that any method can receive a block.
# Does not matter if it uses it or not.
puts "*"*50
def my_method
  puts "something"
end
my_method {"hello"}

# how yield works
puts "*"*50
def my_method_1
  puts "reached the top"
  yield
  puts "reached the bottom"
end
my_method_1 do
  puts "reached yield"
end

# Any parameter passed to yield will serve as a parameter to the block
# So when the block runs, it can use the parameters passed in from the original method.
puts "*"*50
def my_method_2
  yield("John", 2)
end
my_method_2 { |name, age| puts "#{name} is #{age} years old" }