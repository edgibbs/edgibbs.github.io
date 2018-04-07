---
id: 1094
title: Git Commit Games
date: 2016-01-25T21:39:13+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1094
permalink: /2016/01/25/git-commit-games/
categories:
  - management
  - software development
---
A few years ago we were bringing on board a large group of new developers to the team. Most had a light testing background, some exposure to git and no real pairing experience. It didn&#8217;t take long to realize the number of commits on our project slowed down dramatically. Commits still happened, but they were generally large coarse grained commits with hundreds of line changes across many files.

After some gentle nudging about checking in early and often I realized the message wasn&#8217;t sticking. For the most part people waiting until they had completed a whole feature story to actually commit the code. So I figured it might be time to give things a bit of a push.

I remembered a plugin we tried out with Jenkins called the [Continuous Integration Game](https://wiki.jenkins-ci.org/display/JENKINS/The+Continuous+Integration+Game+plugin). You got points for passing builds and adding tests and losing points for breaking the build and breaking tests. The experiment increased the testing a bit on that team, but it never really caught on. Still you have to keep on trying.

The rules were simple:

  * Every day you win by having more commits.
  * More commits in a row means you can rib you&#8217;re coworkers about it.
  * Blocking someone by committing between the time they pulled locally, merged, and ran tests was worthy of extra taunting.

Commits started picking up. After much joking commits were coming early and often. The experiment worked well enough that I wasn&#8217;t even giving feedback anymore. Early and often was the default.