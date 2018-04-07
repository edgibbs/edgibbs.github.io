---
id: 193
title: Curly Braces Style
date: 2005-11-19T02:03:51+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=193
permalink: /2005/11/19/curly-braces-style/
categories:
  - software development
---
I was talking to one of my senior developers this week about curly braces. We&#8217;ve instituted our coding standard around [The Elements of Java Style](http://www.ambysoft.com/elementsJavaStyle.html) and we&#8217;re trying to hold to a strict interpretation. I even held a series of [lunch and learns](http://edgibbs.com/2005/06/16/lunch-and-learn-with-elements-of-java-style/) to help with adoption. This developer who has quite a few years of experience argued that:

> &#8220;The curly braces on a new line really help me line up the nested blocks in conditionals. Without that I often miss a curly brace somewhere. Is this really something we need to do?&#8221;

At the end of the day I have trouble really believing wholeheartedly in no exception type standards, because so often I&#8217;ve seen them used to enforce bad ideas. By default all the Java coding standards assume you&#8217;ll have the curly braces starting on the same line because that is [Sun&#8217;s standard](http://java.sun.com/docs/codeconv/html/CodeConventions.doc6.html#430). Defacto most java code out there follows this standard. At the end of the day this seems like a silly battle to fight the more I think about it. 

Developers can get [pretty religious](http://weblogs.java.net/blog/malcolmdavis/archive/2004/02/adapt_the_java.html) about there preferences on this, but I&#8217;m planning on moving the placement of curly braces to the optional list, or at least let the developers pick a style on a per project basis. I know we&#8217;ll take a small hit in legibility since we&#8217;ll have two different styles, but the tradeoff is pretty minor.

I&#8217;ve seen a suggestion on a blog somewhere that a lot of this thrashing over coding conventions would disappear if the compiler enforced them. At that point there&#8217;s no argument anymore. I find that argument pretty convincing, but for now we still have a lot of options with conventions.

Never hurts to have your developers come back to you with strong arguments that some process isn&#8217;t helping them get the job done. Often they&#8217;re right.