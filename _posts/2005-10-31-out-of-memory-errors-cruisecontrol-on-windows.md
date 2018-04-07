---
id: 175
title: Out of Memory Errors Cruisecontrol on Windows
date: 2005-10-31T21:59:44+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=175
permalink: /2005/10/31/out-of-memory-errors-cruisecontrol-on-windows/
categories:
  - automated builds
  - software development
---
I had a lingering item on one of my lists to look into why our Windows build box runs out of memory after 3-4 days of running cruisecontrol. Turns out it&#8217;s a quick uncomment in cruisecontrol.bat:

<pre>REM Uncomment the following line if you have OutOfMemoryError errors
REM set CC_OPTS=-Xms128m -Xmx256m
</pre>

Not sure why it isn&#8217;t the default.