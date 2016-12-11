require './binarytree'

tree = BinaryTree.new
tree.add(30)
tree.add(100)
tree.add(20)
tree.add(35)
tree.add(25)
tree.add(33)
tree.add(18)
tree.add(134)
tree.add(7)
tree.add(36)
tree.add(34)
tree.add(19)
tree.add(24)

tree.each do |node|
	print "#{node.value}; "
end

tree.delete(100)

puts
puts

tree.each do |node|
	print "#{node.value}; "
end