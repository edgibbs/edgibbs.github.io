---
id: 776
title: Main Methods in Java Training Labs
date: 2009-10-13T19:34:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=776
permalink: /2009/10/13/main-methods-in-java-training-labs/
categories:
  - software development
  - test driven development
---
A common pattern when going through labs for various java classes is the pattern of building some main() method, performing a number of operations and spitting out a bunch of System.out.println()s. It&#8217;s an easy way to get feedback and avoid having to start with much context. Unfortunately it&#8217;s really a procedural style and requires eyeballing the output to see if things worked as expected.

This isn&#8217;t a novel concept, I&#8217;m aware that [Jeff Langr](http://langrsoft.com/) and [Mike Clark](http://clarkware.com/cgi/blosxom/2005/03/18) have talked about using this technique to pick up new languages. The concept is to remap these sort of lab exercises as TDD style means writing some tests using JUnit or TestNG instead. It takes a few minutes potentially to explain to students how JUnit works, but the concept isn&#8217;t much more than understanding executing a main method. There are some good bonuses:

  * If they haven&#8217;t done TDD, the students get a chance to experiment with it in a classroom environment when they&#8217;re already prepared to learn new things.
  * They don&#8217;t have to do strict TDD to get a benefit, but they can still take a learning test approach. Not sure what a given method will return just write a quick assertion and check.
  * You have executable examples to look at long after you leave the class. This can be a benefit when you need to troubleshoot some issue you&#8217;re having.
  * You don&#8217;t have to eyeball the results.

Next time you&#8217;re in a lab showing main() methods and getting feedback from System.out.println() just start with a test instead.