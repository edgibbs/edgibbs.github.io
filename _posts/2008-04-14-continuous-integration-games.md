---
id: 655
title: Continuous Integration Games
date: 2008-04-14T21:03:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/04/14/continuous-integration-games/
permalink: /2008/04/14/continuous-integration-games/
categories:
  - automated builds
  - software development
  - test driven development
---
![](http://edgibbs.com/images/hudson_game.png)

A sense of fun can help new practice adoptions. After reading a post by [Clint Shank](http://clintshank.javadevelopersjournal.com/ci_build_game.htm) on coming up with a continuous integration game Erik Ramfelt went ahead and created a [Hudson plugin](http://hudson.gotdns.com/wiki/display/HUDSON/The+Continuous+Integration+Game+plugin).

Currently the points you get are:

  * -10 points for breaking a build
  * 0 points for breaking a build that already was broken
  * +1 points for doing a build with no failures (unstable builds gives no points)
  * -1 points for each new test failures
  * +1 points for each new test that passes

Looks like a good starting point. I really like the idea of getting points for implementing new tests.