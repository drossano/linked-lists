require_relative 'lib/linked-list'

list = LinkedList.new

list.append("c")
list.prepend("b")
list.prepend("a")
list.append("d")

p list.head.value
p list.tail.value
puts list
puts list.at(0).value
puts list.at(1).value
puts list.at(2).value
puts list.at(3).value
puts list.size
p list.contains?("d")
p list.pop
puts list
p list.contains?("d")
p list.find("a")
list.remove_at(2)
puts list
list.insert_at("p", 1)
puts list