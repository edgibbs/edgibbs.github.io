---
id: 314
title: Coding Without a Net
date: 2006-04-03T21:52:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=314
permalink: /2006/04/03/coding-without-a-net/
categories:
  - ruby
  - software development
  - test driven development
---
I knew better, but despite that I decided to follow along with [Agile Web Development with Rails](http://www.pragmaticprogrammer.com/title/rails/) without doing TDD. Anyway as I noted in an [earlier post](http://edgibbs.com/2006/03/26/introducing-tdd-on-page-169-of-agile-web-development-with-rails/) you don&#8217;t get to the testing section until about 150 pages in.

Apparently I was luckier than usual as I didn&#8217;t run into any show stoppers before getting to the testing chapter. Then I had some hard drive corruption and I had to recover from a backup. I ended up losing some of my code, but I just jumped back in test free. Of course I fell on my face doing the old, code check in browser routine.

Made a little error with the shopping cart class that I just couldn&#8217;t track down (something about a nil class). After about an hour of thrashing, I jumped backwards to writing unit tests around it. Within half an hour I found my logic error courtesy of a typo. 

So I&#8217;m making better, faster progress now because I&#8217;m writing tests around everything. In the future even for wading through sample code, I&#8217;m requiring myself to do TDD. Slower is faster.