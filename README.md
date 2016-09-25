# Ruby Data Structures
Implements basic data structures in ruby, as well as some related algorithms

# Usage

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
10
11
12
14
17
13
20
18
16
15
19
=> nil
irb(main):137:0> bt.in_order_traversal_recursive(bt.root)
17
14
12
20
13
18
11
16
10
19
15
=> nil
irb(main):138:0> bt.post_order_traversal_recursive(bt.root)
17
14
20
18
13
12
16
11
19
15
10
=> nil
irb(main):139:0> bt.level_order_traversal(bt.root)
10
11
15
12
16
19
14
13
17
20
18
=> nil
irb(main):140:0>
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
