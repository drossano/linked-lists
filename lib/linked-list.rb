require_relative 'node'

class LinkedList
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
      until current_node.nil?
        size += 1
        current_node = current_node.next_node
      end
    end
    puts "#{size} item(s) are in the list"
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index)
    if defined?(@head)
      current_node = @head
      current_index = 0
      until current_index == index || current_node.nil?
        current_index += 1
        current_node = current_node.next_node
      end
    else
      nil
    end
    if current_node.nil?
      nil
    else
      current_node
    end
  end

  def pop
    if defined?(@head)
      tail_index = 0
      if @head.next_node.nil?
        @head = nil
        @tail = nil
      else
        until at(tail_index).nil?
          tail_index += 1
        end
          @tail = at(tail_index - 2)
          @tail.next_node = nil
      end
    end
    nil
  end
end

