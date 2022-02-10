require_relative 'lib/linked-list'

list = LinkedList.new

list.append("yo")
list.prepend("listen")
list.prepend("yo")
list.append("yo")
list.size