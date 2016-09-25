# Ruby Data Structures
Implements basic data structures in ruby, as well as some related algorithms

# Usage - Data Structures

## Binary Tree

```
irb(main):129:0> load('lib/binary_tree.rb')
=> true
irb(main):130:0> bt = Datatypes::BinaryTree.new
=> #<Datatypes::BinaryTree:0x4eaf6f8 @root=#<Utility::BTNode:0x4eaf668>>
irb(main):132:0> (10..20).each do |num|
irb(main):133:1*   bt.add_node_to_tree(bt.root, num)
irb(main):134:1> end
=> 10..20
irb(main):135:0> bt.root.print_self
10
--11
----12
------14
--------17
------13
--------20
--------18
----16
--15
----19
=> nil
irb(main):136:0> bt.pre_order_traversal_recursive(bt.root)
10,11,12,14,17,13,20,18,16,15,19 (output modified for succinctness)
=> nil
irb(main):137:0> bt.in_order_traversal_recursive(bt.root)
17,14,12,20,13,18,11,16,10,19,15 (output modified for succinctness)
=> nil
irb(main):138:0> bt.post_order_traversal_recursive(bt.root)
17,14,20,18,13,12,16,11,19,15,10 (output modified for succinctness)
=> nil
irb(main):139:0> bt.level_order_traversal(bt.root)
10,11,15,12,16,19,14,13,17,20,18 (output modified for succinctness)
=> nil
irb(main):140:0>
```

## Binary Search Tree

```
irb(main):148:0> load('lib/binary_search_tree.rb')
=> true
irb(main):149:0> bt = Datatypes::BinarySearchTree.new
=> #<Datatypes::BinarySearchTree:0x4beddc8 @root=#<Utility::BTNode:0x4bedd80>>
irb(main):150:0> (1..10).each do |num|
irb(main):151:1*   bt.add_node_to_tree(bt.root, rand(50))
irb(main):152:1> end
=> 1..10
irb(main):153:0> bt.root.print_self
16
--9
----7
----11
--19
----46
------34
--------20
----------23
=> nil
irb(main):154:0> bt.pre_order_traversal_recursive(bt.root)
16,9,7,11,19,46,34,20,23
=> nil
irb(main):155:0> bt.in_order_traversal_recursive(bt.root)
7,9,11,16,19,20,23,34,46
=> nil
irb(main):156:0> bt.post_order_traversal_recursive(bt.root)
7,11,9,23,20,34,46,19,16
=> nil
irb(main):157:0> bt.level_order_traversal(bt.root)
16,9,19,7,11,46,34,20,23
=> nil
irb(main):158:0>
```

## Trie
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
