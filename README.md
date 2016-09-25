# TrieGem
Implements a very basic Trie for string searching

# Usage

```
irb(main):001:0> load('lib/trie.rb')
... output clipped ...
irb(main):002:0> load('lib/utility/node.rb')
... output clipped ...
irb(main):003:0> require 'trie'
... output clipped ...
irb(main):004:0> t = Datatypes::Trie.new
... output clipped ...
irb(main):005:0> t.parse_file('wordsample.txt')
... output clipped ...
irb(main):006:0> t.word_in_trie?('remarkable')
=> true
irb(main):007:0> t.word_in_trie?('ignorant')
=> false
```
