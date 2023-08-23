# This is almost the same. This time, however, we're going to split the string
# on white space (spaces, new lines, tabs) and print each word individually.

INPUT = 'example1.txt'

input_file = File.open(INPUT)
input_file.____ do |line|
  # 2. Split the file into words and print each on its own line.
  # Last time, we printed everything. This time, we'll split each line on
  # spaces and print out the words, one on each line.
  line.____.____ do |word|
    puts word
  end
end
