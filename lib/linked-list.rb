require_relative 'node'

class LinkedList
  attr_accessor :head, :tail
  def append(value)
    node = Node.new(value)
    if defined?(@head)
      @tail.next_node = node
      @tail = node
    else
      @head = node
      @tail = node
    end
  end

  def prepend(value)
    node = Node.new(value)
    if defined?(@head)
      node.next_node = @head
      @head = node
    else
      @head = node
      @tail = node
    end
  end

  def size
    size = 0
    if defined?(@head)
      current_node = @head
      p current_node.value
      until current_node.nil?
        size += 1
        current_node = current_node.next_node
      end
    end
    puts "#{size} item(s) are in the list"
  end
end
