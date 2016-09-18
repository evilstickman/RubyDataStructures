module Utility
  class Node
    attr_accessor :value, :children
    def initialize(val)
      @value = val
      @children = {}
      "abcdefghijklmnopqrstuvwxyz".split('').each do |letter|
        @children[letter] = nil
      end
    end
    def is_leaf?
      @children.any?
    end
    def print_self(prefix = '')
      puts prefix + @value
      "abcdefghijklmnopqrstuvwxyz".split('').each do |letter|
        @children[letter].print_self(prefix+'--') if @children[letter]
        puts prefix + '|' unless @children[letter]
      end
    end
  end
end

