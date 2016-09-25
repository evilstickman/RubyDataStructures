require 'utility/btnode'

module Datatypes
  class BinarySearchTree
    attr_accessor :root
    LEFT_CHILD = 0
    RIGHT_CHILD = 1
    DUPLICATE = 2
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

      dir = left_or_right(node, data)
      if dir == LEFT_CHILD
        if(node.left.nil?)
          node.left = Utility::BTNode.new
          node.left.data = data
          return node
        else
          return add_node_to_tree(node.left, data)
        end
      elsif dir == RIGHT_CHILD
        if(node.right.nil?)
          node.right = Utility::BTNode.new
          node.right.data = data
          return node
        else
          return add_node_to_tree(node.right, data)
        end
      else #duplicate
        return node
      end
    end

    def left_or_right(node,data)
      return LEFT_CHILD if data < node.data
      return RIGHT_CHILD if  data > node.data
      return DUPLICATE
    end

    def pre_order_traversal_recursive(node)
      puts node.data if node
      pre_order_traversal_recursive(node.left) unless node.nil?
      pre_order_traversal_recursive(node.right) unless node.nil?
    end
    def in_order_traversal_recursive(node)
      in_order_traversal_recursive(node.left) unless node.nil?
      puts node.data if node
      in_order_traversal_recursive(node.right) unless node.nil?
    end
    def post_order_traversal_recursive(node)
      post_order_traversal_recursive(node.left) unless node.nil?
      post_order_traversal_recursive(node.right) unless node.nil?
      puts node.data if node
    end
    def level_order_traversal(node)
      queue = Queue.new
      if node
        puts node.data
        queue << node.left
        queue << node.right
      end
      while(queue.size > 0)
        new_node = queue.pop
        if new_node
          puts new_node.data
          queue << new_node.left
          queue << new_node.right
        end
      end
    end
  end
end
