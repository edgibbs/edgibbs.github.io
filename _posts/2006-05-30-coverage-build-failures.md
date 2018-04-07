---
id: 364
title: Coverage Build Failures
date: 2006-05-30T20:36:26+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=364
permalink: /2006/05/30/coverage-build-failures/
categories:
  - scrum
  - software development
  - test driven development
---
Our builds are failing today on one project. They&#8217;re failing because one of the developers asked me to turn on a Clover failure target. Now if the unit test coverage falls below 75% the build fails. The 75% number was fairly arbitrary, but you have to pick something. 

The fact that we&#8217;ve made it to this point is both a good and bad sign:

  * Good, because the team is insisting on a certain level of coverage.
  * Bad, because they&#8217;re still adapting to TDD. Essentially on each Sprint they&#8217;re writing a few unit tests up front, then a lot of JSF code, and then catching up on the unit tests at the end.

Our eventual solution has to be to switch over to real TDD and not leave most of the unit tests for the last part of the Sprint. Hopefully forcing builds to break if things slip will help with that for the next Sprint.