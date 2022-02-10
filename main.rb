require_relative 'lib/linked-list'

list = LinkedList.new

list.append("a")
list.prepend("b")
list.prepend("c")
list.append("d")
puts list.head
puts list.tail