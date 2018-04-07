---
id: 347
title: Right-Click Coding or Clickety Click Coding
date: 2006-05-11T22:48:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=347
permalink: /2006/05/11/right-click-coding-or-clickety-click-coding/
categories:
  - software development
---
[Cote](http://www.redmonk.com/cote/), now of [Redmonk](http://www.redmonk.com/), has a recent [post](http://www.redmonk.com/cote/archives/2006/05/oracle_develope.html) describing what I call [Clickety Click](http://edgibbs.com/2006/03/17/are-there-any-jsf-best-practices/) Coding and he refers to as Right-Click Coding:

> I&#8217;ve never been one for model, tool, or drag-and-drop based development. Oracle development, at least as presented to us and as illustrated in the hands-on-lab (where we actually coded up EJBs and Web Services) is all three of those to the extreme. I call it &#8216;Right-click Coding,&#8217; because you&#8217;re always right clicking on things to configure different wizards and properties instead of writing the code.

Unfortunately Right-Click coding does make great demos, though things like Rails are making in-roads there with command line driven demos. I despise these demos since they&#8217;re typically shown by sales engineers who never have to maintain these quick demo solutions. There&#8217;s a lot of hand waving about how you have this fully implemented domain model that allows you to just hook together all these loosely coupled services even though you&#8217;d actually have to write all those nice services in the real world.

The worst part is that they&#8217;ve invited a few business folks, who now thing all the coding is the easy part. Luckily a lot of sales engineers push inane ideas to the hilt and say the magic words, &#8220;Oh, with tool X you can just have your business analysts draw out the process.&#8221; I do a bit of cheering at this point, because those same business analysts have heard this line before. They&#8217;ve tried to use these right-click modeling tools before and they just don&#8217;t behave like Excel or Visio. Usability appears to be a very low concern for these tools which often assume you&#8217;re a developer who&#8217;s spent years in various difficult IDEs. And that&#8217;s the point business analysts get completely, &#8220;Heh, this stuff is for programmers.&#8221;

And then then there&#8217;s the other down side of relying on a tool to just generate everything:

> Of course, I&#8217;m not sure how well things will go when you start having to debug and track down problems. I&#8217;m not sure there was a right-click option for &#8216;Fix all broken things.&#8217;

My favorite question to ask the vendor at this point is a pretty simple one, 

> **So how do I test this?**
  
> Oh, well you can load test it for performance with something like Mercury&#8217;s LoadRunner product.
  
> **No, how do I unit test the code?**
  
> Well, your QA department can will fully test the code with a set of test cases.
  
> **But, how would I write a unit test for this?**
  
> Hmm, well the web service we just created has a client code and a simple HTML test page that you can use to test the web service.
  
> **OK, but that&#8217;s a manual integration test that tests the whole service at once, how would I just write an automated unit test.**
  
> Well, let me get back to you on that I know there&#8217;s a feature we have to cover that I just haven&#8217;t used it.