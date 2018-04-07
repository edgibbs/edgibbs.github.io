---
id: 363
title: Require rubygems
date: 2006-05-29T20:59:30+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=363
permalink: /2006/05/29/require-rubygems/
categories:
  - ruby
  - software development
---
Turns out my [problem](http://edgibbs.com/2006/05/28/configuration-problems-with-rubys-xmlsimple/) with getting ruby to recognize the xml-simple rubygem was solved by a simple require statement:

<pre>require 'rubygems'</pre>

Configuration issues are so often the bane of programming. Anyway the necessity for this is explained [here](http://docs.rubygems.org/read/chapter/3#page70) as in RTFM.