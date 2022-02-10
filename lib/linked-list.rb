require_relative 'node'

class LinkedList
  attr_accessor :head, :tail
  def append(value)
    node = Node.new(value)
    @tail = node
    if defined?(@head)
      @tail.next_node = node
    else
      @head = node
    end
  end

  def prepend(value)
    node = Node.new(value)
    @head = node
    if defined?(@head)
      node.next_node = @head
    else
      @tail = node
    end
  end

end
