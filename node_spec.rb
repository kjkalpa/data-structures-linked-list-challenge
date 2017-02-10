require_relative 'node'

describe Node do
  let(:node) { Node.new(8) }

  context '#new' do
    it 'should have a value' do
      expect(node.element).to eq(8)
    end

    it 'should point to nil' do
      expect(node.next).to eq(nil)
    end
  end

  context '#insert_after' do
    it 'should insert a new node' do
      next_node = Node.new(9)
      expect(node.insert_after(next_node)).to eq(next_node)
    end
  end

  context '#remove_after' do
    it 'should remove the next node' do
      node.remove_after
      expect(node.next).to eq(nil)
    end
  end
end
