---
id: 295
title: Behavior Driven Development
date: 2006-03-14T22:06:46+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=295
permalink: /2006/03/14/behavior-driven-development/
categories:
  - conferences
  - ruby
  - software development
  - test driven development
---
Today at SD West 2006 I took a [hands-on session](http://blog.daveastels.com/articles/2006/03/14/bdd-rspec-tutorial) with [Dave Astels](http://blog.daveastels.com/) on using [rSpec](http://rspec.rubyforge.org/). Dave&#8217;s primary message was we shouldn&#8217;t be talking about the word **test** in test driven development, but we should focus on behavior. Really when you&#8217;re doing TDD you&#8217;re specifying what the code should do not verifying that code works.

It&#8217;s an argument that seems to be picking up steam which is partly the idea of changing Test Driven Development to Test First Design or Test Driven Design. rSpec is essentially a replacement for xUnit in Ruby that focuses on nice English syntax for expectations in the form of:

<pre>should.have.at.least(5).items</pre>

I&#8217;ve seen something like this in Java as well with the [JBehave](http://jbehave.codehaus.org/index.html) project or [Agiledox](http://joe.truemesh.com/blog/archives/agile/000047.html), but rSpec seems to be making some pretty nice progress. The exercise was to implement the game of [Deflexion](http://www.deflexion.biz/) with a full set of expectations. It was a pretty well thought out exercise for a half-day tutorial and Dave was able to spend time wandering around answering questions effectively. 

The surprising thing was I paired up with another developer who gets to do a lot of XP in his day job and we really marched our way through the tutorial. We managed to get through 24 <strike>tests</strike>, I mean expectations, in about 2.5 hours. Not that surprising unless you consider I&#8217;m a relative newbie to Ruby and he was a complete newbie, though probably a better pure coder. As a bonus I understand Ruby modules and their syntax a lot better now.

Anyway I&#8217;ll be working my way through the complete tutorial tonight, because Ruby and behavior-driven development is just a lot of fun.