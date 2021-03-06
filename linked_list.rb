require_relative 'node'

class LinkedList
  attr_accessor  :root_node

  def initialize(arg = nil)
    @root_node = arg
  end

  def insert_first(element)
    new_node = Node.new(element)
    if @root_node
      tmp_root = @root_node 
      @root_node = new_node
      @root_node.insert_after(tmp_root)
    else
      @root_node = new_node
    end
  end

  def remove_first
    self.root_node = root_node.next if root_node
  end

  def insert_last(element)
    next_node = @root_node 
    while next_node.next
      next_node = next_node.next 
    end
    next_node.insert_after(Node.new(element))
  end


end


