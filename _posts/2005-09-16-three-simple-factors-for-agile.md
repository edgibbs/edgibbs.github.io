---
id: 106
title: Three Simple Factors for Agile
date: 2005-09-16T21:40:48+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=106
permalink: /2005/09/16/three-simple-factors-for-agile/
categories:
  - software development
---
Listening to an [Agile Tool Kit](http://agiletoolkit.libsyn.com/) podcast interview with Bob Martin from the Agile 2005 conference yesterday he mentioned that you really only needed three factors for an agile project:

  * Short cycles
  * Unit Testing/Acceptance Testing
  * Collocation

Short cycles are easy most places. You can generally do them even if the process is very BDUF oriented because you can simply start coding earlier and demo at the end of say 30 days. I&#8217;ve found this one fairly easy to institute.

Unit testing would seem easy, but I&#8217;ve found this actually a lot more difficult to implement in practice. Most web developers just don&#8217;t see what writing tests is going to do for them. TDD is a foreign concept. Then many of the web apps that get written don&#8217;t have that large a scope so they don&#8217;t tend to have a lot of defects if the developer is pretty diligent doing manual unit testing or the **GuruTestsCode** pattern. And then most web apps make use of two traditionally hard to unit test items, databases and GUIs.

Collocation seems easy, but mature companies are incredibly anal about turf. They don&#8217;t want to give up a conference room for months. Oh, the project might be critical to the company, but we couldn&#8217;t possibly give up space for it, where would anyone hold a weekly staff meeting complete with doughnuts.