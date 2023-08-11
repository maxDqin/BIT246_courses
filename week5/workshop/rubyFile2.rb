# This is almost the same. This time, however, we're going to split the string
# on white space (spaces, new lines, tabs) and print each word individually.


INPUT = "example1.txt"

input_file = File.open(INPUT) #do |input_file|
      #####{{{1.Other way of declaring input _file is File.open(INPUT) do |input_file| and you use "end" at the end. look at the commented "end" at the EoF.
  x = 1
  input_file.each do |line|

    #{{{ 2. Split the file into words and print each on its own line.
    # Last time, we printed everything. This time, we'll split each line on
    # spaces and print out the words, one on each line.


	line.split.each do |word|
    if x%2==0 then
      puts  word
    else
      puts
    end
    x= x + 1
  end
    #}}}

  end

      ######end}}}.
