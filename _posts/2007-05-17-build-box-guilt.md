---
id: 566
title: Build Box Guilt
date: 2007-05-17T21:05:16+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/05/17/build-box-guilt/
permalink: /2007/05/17/build-box-guilt/
categories:
  - automated builds
  - software development
---
The value of having continuous integration of your code is everyone knows when someone broke the build. The two most common errors are forgetting to check in all the changed code from someone&#8217;s desktop or forgetting to run the whole test suite before checking in.

There&#8217;s a tiny bit of guilt associated with breaking the build under normal conditions. Then there&#8217;s the times that make you scratch your head.

Like, the developer who checked in a single java class with the compelling CVS comment:

> This doesn&#8217;t compile.

Then there was the retort long ago from another developer who had broken the build by forgetting to check in a class. It turned out the class he hadn&#8217;t bothered to check in that was being referenced in other classes didn&#8217;t actually compile. He sent a cryptic email explaining this:

> I can check in the class if having an unused non-compilable class in CVS is a problem for you guys.

Only problem was the &#8216;unused&#8217; class had several references to it in the code. Strange understanding of unused.

They do make for good war stories.