---
id: 332
title: One To Many Class to Test Classes
date: 2006-04-24T19:46:23+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=332
permalink: /2006/04/24/one-to-many-class-to-test-classes/
categories:
  - software development
  - test driven development
---
[Dave Astels](http://blog.daveastels.com/) argues [pretty strongly](http://money.cnn.com/popups/2006/biz2/netflix/frameset.exclude.html) that though Test Driven Development is catching on, many people could still be practicing it better. One issue is the idea of one-to-one production classes to test classes:

> &#8220;A lot of people have a mantra. We&#8217;ll have ClassX and ClassXTest.&#8221;
  
> &#8211; Dave Astels

His point is well taken, and honestly I often fall into the trap of doing approximately one-to-one test to production classes. The brilliant advice is to: 

> &#8220;Have lots of little test classes. Should be building test classes around the setup or fixture that your building. That gets you a long ways towards BDD (Behavior Driven Development).&#8221;
  
> &#8212; Dave Astels

So a code smell when writing unit tests is that you have tests that depend on the setup and tests that don&#8217;t use it or depend on another setup. This is a sign that you&#8217;re not testing just one behavior and you should refactor things out to two test classes.

A very simple idea, but very easy to recognize while you&#8217;re coding. (This advice comes from a talk he gave at Google, but its a very enjoyable talk for about 45 minutes on BDD)