---
id: 772
title: Continuous Integration Game One Year Later
date: 2009-09-07T19:21:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=772
permalink: /2009/09/07/continuous-integration-game-one-year-later/
categories:
  - automated builds
  - software development
  - test driven development
---
<div align="center">
  <img src="http://edgibbs.com/images/pinball.jpg" /><br /> <!-- http://www.flickr.com/photos/80327698@N00/3858554539/ -->
</div>

[Hudson](https://hudson.dev.java.net/) has a [Continuous Integration Plugin game](http://wiki.hudson-ci.org/display/HUDSON/The+Continuous+Integration+Game+plugin) that gives you points for successful builds, adding tests, removing TODOs, etc. As a plugin it started out simple, but now allows you to get points based on:

  * Doing a successful build.
  * Adding new successful tests.
  * Fixing PMD, FindBugs, or Checkstyle warnings.
  * Fixing a compiler warning.
  * Fixing a TODO.

Around a [year ago](http://edgibbs.com/2008/04/14/continuous-integration-games/) I tried it out with my development team. It looked like a fun way to reinforce good practices, but I wasn&#8217;t sure how it would play out. As a dedicated gamer I loved the idea, but development teams contain all sorts of other personalities. 

At the end of the year it was a mixed success. One developer really took to the plugin and even reported bugs and modified the rules to make it reflect reality a bit better. He brought up the scoreboard in a few team meetings and gently tried to foster some competition. At the end of the year he easily led the leader board. I had one of the higher scores myself as a caretaker of Hudson since I often ran builds to clarify something that had been configured wrong or to setup a new project. For the most part the rest of the team knew it was there, but never mentioned their score or ribbed anyone about how low or high they were on the scoreboard.

The key behavior you want on any development team is that the developers care about the CI build and fix it quickly when it breaks. As the year went along this behavior began to be integrated within the team. It took a bit of prodding in some cases, but eventually all the developers felt bad if the build was broken for long and stopped to fix the build before moving on again. The CI game may have played a small role in this, but I was happy with the results. I&#8217;d recommend trying it with any team and see how your results go. It didn&#8217;t encourage any negative behavior and the results could be impressive with more gaming centric developers.