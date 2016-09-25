module Utility
  class BTNode
    attr_accessor :data, :left, :right,:parent
    def initialize(parent_node = nil)
      data = left = right = nil
      parent = parent_node
    end

    def is_leaf?
      return left.nil? && right.nil?
    end
    def print_self(prefix = '')
      puts prefix + @data.to_s
      @left.print_self(prefix + '--L') if @left
      @right.print_self(prefix + '--R') if @right
    end
  end
end

