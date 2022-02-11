require_relative 'lib/linked-list'

list = LinkedList.new

list.append("a")
list.prepend("b")
list.prepend("c")
list.append("d")
puts list.at(0)
puts list.at(1)
puts list.at(2)
puts list.at(3)