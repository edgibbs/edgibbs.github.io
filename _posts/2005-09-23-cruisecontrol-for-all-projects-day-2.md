---
id: 112
title: Cruisecontrol for All Projects Day 2
date: 2005-09-23T21:11:47+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=112
permalink: /2005/09/23/cruisecontrol-for-all-projects-day-2/
categories:
  - software development
---
Only 1 day into the new Cruisecontrol across all the developer projects. By 8:30 this morning I had two programmers standing in my office asking why they were getting these emails from ChickenLittle. ChickenLittle is the name of our build server, the idea&#8217;s borrowed from [ShipIt!](http://www.pragmaticprogrammer.com/titles/prj/index.html) They were fine once I gave them a 5 minute explanation on the whiteboard and understood we were just gradually easing into the builds over the next week. Of course after next week broken builds will have to be cleaned up quickly.

The interesting thing is even today where it&#8217;s really just more of a dry run I saw more evidence of the indirect benefits. One of the builds is still broken because they need to checkin a dependent jar. So on each checkin the failure emails go out. We&#8217;re using the HTML email publisher, and the list of changed files from CVS with the owner and the comment shows up at the end. Turns out the senior developer making fixes has a good habit of adding meaningful CVS comments like &#8216;cleaned up deeply nested conditional statements on calclulateInterest()&#8217;. The other developers have just been checking things in with blank cvs comments. So expect soon I&#8217;ll see a lot fewer empty cvs comments.