# For this exercise, we'll use a Hash to keep track of the frequency of each
# type of word in input file. Let's write it out to a file.

INPUT = 'example1.txt'
OUTPUT = 'exampleOutput.txt'

File.open(INPUT) do |input_file|

  # 1. First, use the Hash.new(obj) to create a Hash that returns 0 if the key isn't found.
  # This makes tracking frequencies much easier.

  # A Hash is a table mapping keys to values. Think of it like a dictionary.
  # If you know that word, you can look up information about it. (NB, neither
  # the word nor the value have to be strings; they can be anything.)
  #
  # Here, I create a new Hash object. I pass it 0. Now, if I try to access that
  # key that I haven't explicitly added to the Hash, it will return 0.  This
  # makes adding one to the count much easier.

  counts = Hash.new(0)

  input_file.each do |line|
    line.split.each do |word|
      # 1. First, use a regular expression remove all the non-alphanumeric characters.
      # Remember that the regular expression is just /\W/.
      # We'll do this using a very simple regular expression. \w matches
      # anything that's a word. The definition of *word* here includes an underscore,
      # but we won't worry about that. \W matches anything that's
      # *not* a word.
      #
      # word.gsub removes replaces everything that matches the regular
      # expression (regex) with the argument in the second string (here an
      # empty string), and it returns that new string.
      #
      # word.gsub! goes a step further and changes word in place.

      word = word.gsub(/\W/, '')

      # 2. Now make the word lower-case.
      # word.downcase makes everything lowercase and returns a new string.
      # word.downcase! makes everything lowercase in word.
      word = word.downcase

      # 3. Now increment the frequency of word in the frequency hashtable.
      counts[word] += 1 unless word.empty?
    end
  end


  # 4. Now use Hash.each to get each key-value pair from counts and print them out.

  # Now that everything's counted, we can print it out. Remember each (we
  # called it above on files and the split lines. We can use that here too to
  # get each key, value pair.
  counts.each do |key, value|
    # This inserts the values of the variables into the string. Notice that I
    # used double quotes for this. It won't work with single quotes.
    #
    # The \t means to put a tab between the two.
    puts "'#{key}'\t#{value}"
  end

  # First, open the OUTPUT file for writing ('w'). Because we're already using
  # 'input_file' for the input file, we'll use 'output_file'.
  File.open(OUTPUT, 'w') do |output_file|
    counts.each do |key, value|
      # Now, instead of printing using puts, we write it to output_file using
      # the << method. Notice that we have to add '\n' to the end of the string
      # so everything we be on different lines.
      output_file << "'#{key}'\t#{value}\n"
    end

    # Since we're not printing anything, there's no output. Really, that's
    # probably better, but it can make people nervous (what just happened?).
    # Let's make this more friendly.
    puts "All done. The output is in #{OUTPUT}."
  end
end
