# p24
# kids = {"first"=>"Alex", "Second"=>"Will", "third"=>"Molly"}
# puts kids.inspect

# p25
# kids = {"first" => "Alexander",
#         "second" => "William",
#         "third" => "Molly"
# }
#
# kids = Hash.new

# p26
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# kids["fourth"] = "Dolly"
# kids["fifth"] = "Regis"

# p27
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# family = kids
#
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# parents = {"daddy" => "Jerry", "mommy" => "Mary"}
# family = kids.merge(parents)

#
# p28
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# kids.clear
#
# p29
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# kids.delete("second")
#
# p30
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# kids.delete_if {|key, value| key >= 'third'}
# puts kids.inspect

# page30
kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
puts "\n\nKeys belonging to the kids hash:\n\n"
kids.keys.each do |k|
  puts k
end
