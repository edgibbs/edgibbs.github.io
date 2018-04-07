---
id: 669
title: 'C# Coding Standards'
date: 2008-11-02T20:23:54+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=669
permalink: /2008/11/02/c-coding-standards/
categories:
  - management
  - software development
---
Due to a peculiar set of circumstances I&#8217;m looking at C# coding standards or style guides. The key decision is to agree to a style guide that everyone more or less follows. I also like style guides that go a bit beyond how to format the curly braces on a newline or tabs versus spaces. I like rules like this:

> Define small classes and small methods.
> 
> &#8212; Rule #69 [The Elements of Java Style](http://www.ambysoft.com/books/elementsJavaStyle.html) 

At a previous organization:

  1. I bought a bunch of copies of [The Elements of Java Style](http://www.ambysoft.com/books/elementsJavaStyle.html).
  2. I handed them out to all of our developers.
  3. I ran a brown bag lunch covering the top 10 rules I wanted them to concentrate on.
  4. We checked most of the style items in the continuous build with Checkstyle. Gentle enforcement.

A quick perusal of the C# world says there isn&#8217;t any base coding standard like [Sun&#8217;s Coding Conventions](http://java.sun.com/docs/codeconv/html/CodeConvTOC.doc.html). I&#8217;m a bit surprised since I expected Microsoft to have at least attempted to do so, but other than the things you can glean from heaps of example code it doesn&#8217;t appear they have a well documented default.

The candidates from fifteen minutes of googling appear to be:

  * [C# Coding Style Guide](http://www.csharpfriends.com/articles/getarticle.aspx?articleid=336) from icsharpcode.net.
  * The [iDesign C# Coding Standard.](http://www.idesign.net/idesign/DesktopDefault.aspx) from iDesign.
  * [C# Coding Standard](http://www.tiobe.com/content/paperinfo/gemrcsharpcs.pdf) from Philips Medical Systems.

The ic#code standard is concise and covers the basics. The iDesign option is more comprehensive. A quick skim did found a rule I don&#8217;t agree with:

> Avoid methods with more than 200 lines.

Two hundred lines is ripe for refactoring to many 10-20 line methods. Still it is a lot more in depth. The final Philips standard attempts to combine rules from their C++ Coding Standard, the ECMA C# language spec, and an MSDN Design Guidelines Library Development document.

I&#8217;m pretty open at this point to suggestions from any of you who have spent a lot of time in the C# trenches.