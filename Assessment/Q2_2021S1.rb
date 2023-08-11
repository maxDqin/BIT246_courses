require 'rubyXL'

# workbook = RubyXL::Parser.new
#
workbook = RubyXL::Parser.parse("./Book1.xlsx")

worksheets = workbook.worksheets
puts "Found #{worksheets.count} worksheets"

worksheets.each do |worksheet|
  puts "Reading: #{worksheet.sheet_name}"
  num_rows = 0
  worksheet.each do |row|
    row_cells = row.cells.map{ |cell| cell.value }
    puts row_cells
    num_rows += 1
  end
  puts "Read #{num_rows} rows"
end

fruitList = ["Apples", "Oranges", "Pineapple",  "Grapes"]
puts fruitList.sort.inspect