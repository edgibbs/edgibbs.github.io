---
id: 156
title: Passing Nulls
date: 2005-10-09T21:45:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=156
permalink: /2005/10/09/passing-nulls/
categories:
  - software development
---
I&#8217;m about halfway through [Michael Feathers&#8217;s](http://www.artima.com/weblogs/index.jsp?blogger=mfeathers) [Working Effectively with Legacy Code](http://www.amazon.com/exec/obidos/tg/detail/-/0131177052/104-9123233-7993537?v=glance), and I came across his attempt to handle nasty methods that take multiple parameters by merely passing in nulls and seeing if the test will still run. If the nulls are good enough then you can spend a lot less time digging through the legacy code for knotty dependencies. I&#8217;ve tried this before myself, but I never put much thought into it until I ran across it here. Pretty interesting read so far though I find the C++ code examples a little hard to follow sometimes.