require "search_in_file"
require "docx_generator"
puts "give path:"; # ask for path of directory
path = STDIN.gets # gets path
path.chop! # removes "/n" from end of path string
puts "give phrase:"; # ask for phrase to look for
phrase = STDIN.gets # gets phrase
phrase.chop! # removes "/n" from end of phrase string

looki = SearchInFile.search(path, phrase)
$k = looki.count
$x = 0
if $k != 0
  puts "No. Documents containing #{phrase}: #{$k}"
  while $x < $k
    if looki[$x][:file] =~ /docx/
    then
      puts looki[$x][:file]
      parainit = looki[$x][:paragraphs]
      paragConvert = parainit.to_s
      wCount = paragConvert.scan(/#{phrase}/).size
      puts "COUNT of given phrase '#{phrase}' : #{wCount}"
    end
    $x += 1
  end
else
  puts "not found anything"
  puts "Generating #{phrase}.docx file ..."
  Dir.chdir(path)
  DocxGenerator::DSL::Document.new(phrase) do |doc|
    doc.paragraph do |par|
      par.text phrase
      par.text phrase
    end
    doc.save
  end
end
