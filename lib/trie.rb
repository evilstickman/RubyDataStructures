require 'utility/node'
module Datatypes
  class Trie
    attr_accessor :root, :current_node
    def initialize()
      @root = Utility::Node.new('')
    end
  
    def parse_file(filename)
      f = File.open(filename, 'r')
      f.lines.each do |line|
        word_array = line.split(' ')
        word_array.each do |word|
          word = word.gsub(/[^a-zA-Z]/,'')
          puts "adding #{word}"
          add_word(word)
        end
      end
    end
  
    def add_word(word)
      current_node = @root
      word.split('').each do |letter|
        letter = letter.downcase
        current_node.children[letter] = Utility::Node.new(letter) if (current_node.children[letter].nil?)
        current_node = current_node.children[letter]
      end
    end

    def word_in_trie?(word, current=@root)
      return true if word.empty?
      return false if word.nil?
      return false if current.nil?
      letter = word[0].downcase
      return false if current.children[letter].nil?
      return true && word_in_trie?(word[1..word.length],current.children[letter])
    end
  
    def to_s
      @root.print_self
    end
   
  end
end
