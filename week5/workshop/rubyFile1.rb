 #For this exercise, open a file, read in each line individually, and write it
# to the screen.
#
# For working with files, Ruby provides the File object. You can open this with
# File.open. You pass this the file name and a block for working with the file
# (a block is the "do |...| ... end" construct that we use with loops).
#
# The file object has an .each method, which works just like the .each method
# on Arrays. It passes each line to the loop/block.


# You should be able to read the steps and what you need to do for each below.
# Think about what the answer will look like, maybe implement it in another
# window, and then open the fold to see how I did it.


#{{{ 1. Set the name of the file to a constant so it can be changed later.
# This opens example1.txt, reads each line, and writes them to the screen.

# First, set the name of the file to the constant INPUT. This makes it easy to
# change the name later.
INPUT = "example1.txt"
#}}}

#{{{ 2. Open the file and pass the file object to a block.
# Now, open the file. This executes the block (do |input_file| ... end), with
# 'input_file' assigned to the File object. When the block is done, the file is
# automatically closed.
File.open(INPUT) do |input_file| # File.open(INPUT) = [one two three, gekki, do*g]; input_file = [one two three, gekki, do*g]
  #}}}

  #{{{ 3. Read each line from the file and print it to the screen.
  # This executes the block (do |line| ... end) for every line in the file.
  x=1 
  input_file.each do |line| # input_file.each = [one two three, gekki, do*g]; line = one two there
    puts x.to_s+"."+line
    x+=1
  end
  #}}}

  #{{{ 4. Close the block from #2.
end
#}}}