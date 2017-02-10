require_relative 'linked_list'


describe LinkedList do
  let(:list) { LinkedList.new }
  context '#new' do 
    it 'Instantiate a new linked list' do 
      new_list = LinkedList.new
      expect(new_list.root_node).to eq(nil)
    end
  end

  context '#insert_first' do 
    it 'insert a new record at beginning' do 
      list.insert_first(9) 
      expect(list.root_node.element).to eq(9)
    end
    it 'insert a second record at beginning' do 
      list.insert_first(9) 
      list.insert_first(10) 
      expect(list.root_node.element).to eq(10)
    end
    it 'next node should be available' do 
      list.insert_first(9) 
      list.insert_first(10) 
      next_node = list.root_node.next
      expect(next_node.element).to eq(9)
    end
  end

  context '#remove_first' do 
    it 'should return nil if empty' do 
      list.remove_first
      expect(list.root_node).to eq(nil)
    end

    it 'should return nil after removing only item' do 
      list.insert_first(9)
      list.remove_first
      expect(list.root_node).to eq(nil)
    end

    it 'should remove the first item in the list' do 
      list.insert_first(9) 
      list.insert_first(10) 
      list.remove_first
      expect(list.root_node.element).to eq(9)
    end
  end

  context '#insert_last' do 
    it 'should insert element to end of list' do 
      list.insert_first(10) 
      list.insert_first(9) 
      list.insert_last(11)
      expect(list.root_node.next.next.element).to eq(11)
    end
  end

  context '#remove_last' do 
  end

end
