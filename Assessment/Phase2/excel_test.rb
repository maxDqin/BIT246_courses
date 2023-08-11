require 'rubyXL'

# newpath = Rails.root.to_s + '/' + params[:path].to_s
newpath = "./"

# newfile = params[:newfile].to_s
newfile = "test"

newBook = RubyXL::Workbook.new
newBook.worksheets[0].add_cell(0,0,"phrase")
newBook.write(newpath + "k.xlsx")
# new_files = RubyXL::Parser.parse(newPath + ".xlsx")