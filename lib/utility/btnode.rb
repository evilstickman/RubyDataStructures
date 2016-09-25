module Utility
  class BTNode
    attr_accessor :data, :left, :right
    def initialize
      data = left = right = nil
    end

    def is_leaf?
      return left.nil? && right.nil?
    end
    def print_self(prefix = '')
      puts prefix + @data.to_s
      @left.print_self(prefix + '--') if @left
      @right.print_self(prefix + '--') if @right
    end
  end
end

