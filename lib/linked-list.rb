require_relative 'node'
require 'pry-byebug'
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

  def contains?(value)
    if @head.nil?
      false
    elsif @head.value == value
      true
    else
      current_index = 0
      until at(current_index).nil? || at(current_index).value == value
        current_index += 1
      end
      if at(current_index).nil?
        false
      else
        true
      end
    end
  end

  def find(value)
    if @head.nil?
      nil
    elsif @head.value == value
      0
    else
      current_index = 0
      until at(current_index).nil? || at(current_index).value == value
        current_index += 1
      end
      if at(current_index).nil?
        nil
      else
        current_index
      end
    end
  end

  def to_s
    if @head.nil?
      puts "nil"
    else
      list_string = ""
      current_index = 0
      until at(current_index).nil?
        list_string.concat("( #{at(current_index).value} ) -> ")
        current_index += 1
      end
    end
    list_string.concat("nil")
  end

  def insert_at(value, index)
    new_node = Node.new(value, at(index))
    at(index - 1).next_node = new_node
  end
end

