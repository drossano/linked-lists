class Node
  attr_accessor :value, :next_node
  
  def value(value = nil)
    @value = value
  end

  def next_node(next_node = nil)
    @next_node = next_node
  end
end
