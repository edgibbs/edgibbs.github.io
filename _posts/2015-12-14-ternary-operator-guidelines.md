---
id: 1085
title: Ternary Operator Guidelines
date: 2015-12-14T23:02:37+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1085
permalink: /2015/12/14/ternary-operator-guidelines/
categories:
  - software development
---
Short conversation at the office today. I declared that I wasn&#8217;t a big fan of ternaries and that I typically used them only for simple one line statements and almost never in returns and never nested. One of the developers challenged me on why the ternary operator is frowned on and I admitted I didn&#8217;t have much in the way of data. After some digging on the interwebs.

Github&#8217;s style guide has the most common approach to the ternary:

> &#8220;Avoid the ternary operator (?:) except in cases where all expressions are extremely trivial.&#8221;

&#8212;[Github style guide](https://github.com/styleguide/ruby)

Support for using ternary&#8217;s in return statements is generally supported as well. There is general agreement that nesting ternaries is a bad practice. Static analyzers like Rubocop and Checkstyle include checks for nested ternary operators.

Historically ternary operators bothered me because I missed them sometimes when scanning through code. If and else are hard to miss on a quick scan. I&#8217;ve adjusted to using them for one simple one liners as the terseness is nice. Nesting them strikes me as abuse, much like single letter variables or predicates methods that have side effects.