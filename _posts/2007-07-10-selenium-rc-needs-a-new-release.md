---
id: 586
title: Selenium RC needs A New Release
date: 2007-07-10T16:35:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/10/selenium-rc-needs-a-new-release/
permalink: /2007/07/10/selenium-rc-needs-a-new-release/
categories:
  - acceptence testing
  - software development
---
After about 20 minutes of frustration watching Selenium tests fail to launch Firefox 2.0 sessions I found the culprit buried in the bottom of the [Selenium RC FAQ](http://wiki.openqa.org/display/SRC/Selenium+RC+FAQ):

> There&#8217;s a bug (SRC-216) that prevents Firefox 2.0.0.1 or later from starting up in Selenium RC 0.9.0. Until the new version is released, please use a latest SNAPSHOT version.

The SNAPSHOT release is at 0.9.2 and the public release is at 0.9.0. 0.9.0 is about 8 months old now and the SNAPSHOT release of 0.9.2 is current as of July 7th, 2007. I think it&#8217;s time to have another public release and save some pain.