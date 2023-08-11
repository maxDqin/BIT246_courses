# x = [2, 4, 6, 8, 10]
# puts x
# puts x.inspect
# x = [1, 2, 3]
# y = [4, 5, 6]
# z = x + y
# puts z.inspect

# x = ["a", "b"]
# puts x.inspect
# if x.empty? == false thener
#   x.each { |child| puts child }
# else puts "empty"
# end
#
#
# children = %w(Alexander William Molly)
# puts children.inspect


# children = []
# if children.empty? == false then
#   children.each {|xy| puts xy}
# else
#   puts "The children array is empty"
# end
# test = ["a", "b", "c", "d", "e"]
# x = test.slice(1..4)
# puts x.inspect
#
# children = %w(Alexander William Molly)
# puts children.last
# puts children[children.length-1]

#
#
# children = %w(Alexander William Molly)
# children.pop
# children.pop
# children.push("Test")
# puts children

# children = %w(Alexander William Molly)
# x = children.shift # children = [Alexander, William]
# x = children.shift
# x = children.shift
# puts x
#
# a = [1,2,5,7,3]
# a.sort
# print(a)
#
# puts
#
# b = [1,2,5,7,3]
# b.sort!
# print(b)

# fruit = %w(Apples Oranges Bananas Grapes)
# # puts fruit.sort.inspect
# fruit.sort! #two method, 1. sort, sort!
# puts fruit.inspect

# fruit = %w(Apples Oranges Bananas Oranges Grapes)
# fruit.delete("Oranges")
# puts fruit.inspect
#
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# kids.delete_if {|key, value| key >= "a"}
# puts kids
# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# if kids.empty? == false then
#   puts kids.inspect
# else
#   puts "The kids hash is empty"
# end


# children = %w(Alexander William Molly)
# puts "I found him!" if children.include?("Williams")
#
# children.each do |child|
#   if child == "William"
#     puts "I found him!"
#   end
# end
#
# kids = {"first" => "Alex",
#         "second" => "Will",
#         "third" => "Molly"
# }
# puts kids.inspect
# kids["fourth"] = "Dolly"
# kids["fifth"] = "Regis"
# puts kids.inspect
#
# kids1 = {"sixth" => "Lily"}
#
# kids3 = kids.merge(kids1)
# puts kids3

# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# puts "\n\nKeys belonging to the kids hash:\n\n"
# kids.keys.each do |k|
#   print k + "----xxxxx->" + kids[k]
#   puts
# end

kids = {1 => "Alex", 2 => "Will", 3 => "Molly"}
kids.keys.sort.reverse.each do |k|
  puts k
end

# kids = {"first" => "Alex", "second" => "Will", "third" => "Molly"}
# puts "\n\nKeys belonging to the kids hash:\n\n"
# kids.keys.each do |child|
#   puts child
# end
# def check_array(nums)
#
#   max = nums[0];
#
#   if(max <= nums[nums.length-1])
#
#     max = nums[nums.length-1]
#
#   end
#
#   if(max <= nums[nums.length/2])
#
#     max = nums[nums.length/2]
#
#   end
#
#   return max;
#
# end
# totalScore = 10
# puts "Game over. Your score is #{totalScore}."
#
# MyList = [1, 3, 5, 9, 20, -9, 0, 7, 4, 6, 2, 156, 99]
# puts MyList.max { |a, b| a<=>b}
#
# $totalScore = 100
#
# puts "Game over. Your score is #$totalScore"
