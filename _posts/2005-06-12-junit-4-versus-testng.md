---
id: 9
title: JUnit 4 versus TestNG
date: 2005-06-12T21:44:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=9
permalink: /2005/06/12/junit-4-versus-testng/
categories:
  - software development
---
General details about JUnit 4 are starting to leak out and you can find more of the discussion at [Cedric Beust&#8217;s](http://beust.com/weblog) blog. He&#8217;s one of the people behind TestNG which is an alternative java based unit testing framework that built on perceived problems in JUnit including things like the brittleness of having to build suites and adds supports for annotations.

While I applaud the TestNG folks and others for enhancing unit testing in Java, I never considered for long switching to TestNG despite looking into it a few months back. There is the notion of momentum and JUnit has tremendous momentum including books, heavy tool support, and mindshare. TestNG has support for Eclipse and being an IntelliJ user this just doesn&#8217;t do me a lot of good. I also have to learn a new way to doing thinks, new ant tasks, and there&#8217;s no good books to point to. So that means every developer I expose this to I&#8217;ll have to train up or expect them to spend time digesting the tool. There cost of switching is just too great. And the cost of waiting to see which wins out in the open source market place is just a lot easier.

I&#8217;m looking at pretty much the same situation with Subversion versus CVS, but there I expect to be able to migrate to Subversion within 12 months. Subversion from what little research I&#8217;ve done just builds on CVS. So when the tool support comes in I&#8217;ll take the time to spin everyone up on Subversion. And if I&#8217;m wrong CVS is still really workable in an environment where are largest project has 6 developers on it.