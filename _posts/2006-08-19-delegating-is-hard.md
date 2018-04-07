---
id: 420
title: Delegating Is Hard
date: 2006-08-19T21:28:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=420
permalink: /2006/08/19/delegating-is-hard/
categories:
  - automated builds
  - software development
---
Sitting in my cube at work at 8:30pm on a Saturday it hit me. I really need to work on my delegating skills. 

After catching up on a bunch of todo items, notes, and emails from the past week I delved into an existing problem with one of our projects builds. It involves cruisecontrol and maven 2 and all sorts of problems getting maven to do the checkout from cvs or using the <exec> tag to execute cvs from the command line. Anyway after about an hour of tinkering I managed to get it running again, though the build is still failing due to some issues with maven. (Did I mention I&#8217;m still not impressed with maven. It appears to handle everything seamlessly and then you end up in these nasty configuration battles over integrating it with cruisecontrol or even CVS. Ant is verbose, but straightforward and has tons better documentation, books, and examples.)

Anyway the point is I haven&#8217;t really delegated out the build box successfully. I&#8217;ve talked to at least two of my developers about it, but I haven&#8217;t really handed over the reins to anyone. I really like build tools and I don&#8217;t want to give them up. Thus I&#8217;m at work late on a Saturday trying to do too much.