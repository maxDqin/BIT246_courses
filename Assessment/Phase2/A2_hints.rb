require 'search_in_file'

x = SearchInFile.search("./students/test.docx", "Ruby" )
puts x.length
puts x[0].class
puts x.inspect
puts x[0][:file]
puts x[0][:paragraphs]