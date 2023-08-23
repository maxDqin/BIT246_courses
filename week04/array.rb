# p6
# x = [2, 4, 6, 8, 10]
# puts x.inspect

# p7
# children = ["Alexander", "William", "Molly"]
# children = %w(Alexander William Molly)
# puts children.inspect

# p8
# x = [1, 2, 3]
# y = x
# y = [4, 5, 6]
# z = x + y
# puts z.inspect

# p9 replaced and added
# children = ["Alexander", "William", "Molly"]
# children[2] = "Mighty One"
# puts children.inspect
#
# children = ["Alexander", "William", "Molly"]
# children[3] = "Dolly"
# puts children.inspect

# p10
# Names = []
# Names << "Alexander"
# Names << "William"
# Names << "Molly"
#
# Names = []
# Names.push("Alexander")
# Names.push("William")
# Names.push("Molly")

# p11
# children = %w(Alexander William Molly)
# if children.empty? == false then
#   children.each {|child| puts child}
# else
#   puts "The children array is empty"
# end

# p12
# children = ["Alexander", "William", "Molly"]
# middleChild = children[1]
#
# children = ["Alexander", "William", "Molly"]
# middleChild = children[1]

# p13
# children = %w(Alexander William Molly)
# boys = children.slice(0..1)
#
# children = %w(Alexander William Molly)
# boys = children.slice(0..1)

# p14
# children = %w(Alexander William Molly)
# puts children.last
#
# children = %w(Alexander William Molly)
# children.each do |child|
#   puts child
# end

# p15
# children = %w(Alexander William Molly)
# children.clear
#
# children = %w(Alexander William Molly)
# x = children.shift
# puts children.inspect

# p16
# family = %w(Alexander William Molly Daddy Mommy)
# family.pop
# family.pop
# puts family.inspect
#
# fruit = %w(Apples Oranges Bananas Oranges Grapes)
# fruit.delete("Oranges")

# p17
# fruit = %w(Apples Oranges Bananas Oranges Grapes)
# fruit.delete_at(3)

# p18
# fruit = %w(Apples Oranges Bananas Grapes)
# puts fruit.sort.inspect

# p19
# fruit = %w(Apples Oranges Bananas Grapes)
# puts fruit.sort.reverse.inspect

# p20
# children = %w(Alexander William Molly)
# puts "I found him!" if children.include?("William")

