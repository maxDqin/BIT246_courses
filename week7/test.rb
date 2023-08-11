require 'search_in_file'

# rel_hash is an array of hash
rel_hash = SearchInFile.search( "/Users/max/workspace_BIT246/courses/week7/", "ruby" )
puts rel_hash.class
puts rel_hash[0].class
puts "============================"

# the hash has two keys (of :file and :paragraphs)
puts rel_hash[0][:file]
puts rel_hash[0][:paragraphs]
puts rel_hash.size
#
# puts "==========================="
puts rel_hash
#
#
# def fact(n)
#   return 1 if n==0
#   return n * fact(n - 1)
# end
#
# puts fact(0)
# puts fact(1)
# puts fact(2)
# puts fact(4)
#
# require 'puredocx'
# require 'search_in_file'
# class Docx_write
#   def write_to()
#     PureDocx.create('./example1.docx', paginate_pages: 'right') do |doc|
#       doc.content([doc.text('text', style: [:bold], size: 32, align: 'center')])
#     end
#   end
# end

# require 'search_in_file'