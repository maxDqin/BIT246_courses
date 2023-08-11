#
# kids = {"first"=>"Alex", "Second"=>"Will", "third"=>"Molly"}
# kids["fourth"] = "Dolly"
# kids["fifth"] = "Regis"
# #
# parents = {"daddy"=>"Jerry", "mommy"=>"Marry"}
# puts kids.inspect
#
# family = kids
#
# puts family.inspect
#
# family["test"] = "test"
#
# puts kids.inspect
#
# family = kids.merge(parents)
#
# puts family.inspect
#
# family.clear
#
# puts family.inspect
#
kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
puts "\n\nKeys belonging to the kids hash:\n\n"
kids.keys.each do |k|
  puts k
end
