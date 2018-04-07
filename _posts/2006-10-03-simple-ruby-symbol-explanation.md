---
id: 454
title: Simple Ruby Symbol Explanation
date: 2006-10-03T21:45:07+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=454
permalink: /2006/10/03/simple-ruby-symbol-explanation/
categories:
  - ruby
  - software development
---
I hadn&#8217;t quite grokked symbols in ruby for some reason. Somehow the definition from the PickAxe book wasn&#8217;t quite clear enough:

> A Ruby symbol is an identifier corresponding to a string of characters, often a name.

OK, I can see that but what&#8217;s the point. Then playing around on Why&#8217;s 15 minute browser intro to ruby on the ruby language site I came across this definition:

> When you place a colon in front of a simple word, you get a **symbol**. Symbols are cheaper than strings (in terms of computer memory.) If you use a word over and over in your program, use a symbol. Rather than having thousands of copies of that word in memory, the computer will store the symbol only once.

I like Why&#8217;s explanation of the why to use a symbol.