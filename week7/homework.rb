require 'search_in_file'
require 'test'

# rel_hash is an array of hash
rel_hash = SearchInFile.search( "/Users/max/workspace_BIT246/courses/week7/", "putsdddd" )
puts rel_hash.class
puts rel_hash[0].class
puts "============================"

# the hash has two keys (of :file and :paragraphs)
puts rel_hash[0][:file]
puts rel_hash[0][:paragraphs]
puts rel_hash.size

t = Docx_write.new
t.write_to()