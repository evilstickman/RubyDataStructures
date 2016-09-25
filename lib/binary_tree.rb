require 'utility/btnode'

module Datatypes
  class BinaryTree
    attr_accessor :root
    LEFT = 0
    RIGHT = 1
    def initialize
      @root = Utility::BTNode.new
    end
    def load_data_randomly(filename)
      f = File.open(filename, 'r')
      srand
      f.lines.each do |line|
        data = line.to_i
        if root.is_leaf? && root.data.nil?
          root.data = data
        else
          add_node_to_tree(root, data)
        end
      end
    end

    # Uses randomized algorithm to populate data structure, to add some variety
    def add_node_to_tree(node, data)
      if(node.nil?)
         node = Utility::BTNode.new
         node.data = data
         return node
      elsif(node.data.nil?)
        node.data = data
        return node
      end

      dir = left_or_right
      if dir == LEFT
        if(node.left.nil?)
          node.left = Utility::BTNode.new
          node.left.data = data
          return node
        else
          return add_node_to_tree(node.left, data)
        end
      else
        if(node.right.nil?)
          node.right = Utility::BTNode.new
          node.right.data = data
          return node
        else
          return add_node_to_tree(node.right, data)
        end
      end
    end

    def left_or_right
      srand
      rand(2) == 1 ? BinaryTree::LEFT : BinaryTree::RIGHT
    end
  end
end
