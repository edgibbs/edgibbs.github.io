---
id: 720
title: Rhythm of Broken Builds
date: 2009-02-16T19:49:41+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=720
permalink: /2009/02/16/rhythm-of-broken-builds/
categories:
  - automated builds
  - software development
---
<div align="center">
  <img src="/images/zen_fountain.jpg" />
</div>

<!-- http://www.flickr.com/photos/amunivers/100922541/ -->

**Saturday**

1:15 Build Broken
  
1:22 Build Broken
  
1:46 Build Fixed

**Sunday**

9:18 Build Broken
  
9:26 Build Fixed

Active healthy projects have a rhythm. The scenarios look like:

  * The project rarely has any active development. Broken builds are a complete surprise. If you know someone is coding on it, you need to quickly provide some feedback on regular check ins.
  * Active projects with teams new to CI have a lot of broken builds which are generally quickly resolved.
  * Active projects who&#8217;ve worked with CI servers for a while tend to have long periods of calm with the unusual broken build. Often the broken build is due to some minor config item sometimes with the CI server itself.

As a manager in a shop with dozens of independent projects running the CI server is your best friend. The example email pattern was from a typical scenario over the weekend. Without doing more than scanning email subjects on my phone I could tell that a contractor was working over the weekend and adjusting to having automated builds. Gives you a extra bit of confidence.