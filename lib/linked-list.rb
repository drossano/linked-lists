require_relative 'node'

class LinkedList

  def append(value)
    node = Node.new
    node.value(value)
    node.next_node
  end
end