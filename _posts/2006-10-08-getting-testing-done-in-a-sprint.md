---
id: 456
title: Getting Testing Done in a Sprint
date: 2006-10-08T21:25:06+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=456
permalink: /2006/10/08/getting-testing-done-in-a-sprint/
categories:
  - acceptence testing
  - scrum
  - software development
---
[Kane Mar](http://kanemar.wordpress.com/2006/10/07/allowing-time-for-testing/) wrote recently about the difficulty teams have adjusting to finishing within an iteration:

> Typically what this means is that the software will be code complete at the end of an iteration, but will not have been fully tested.

> A comment that was frequently heard during the early retrospectives was that code was delivered late to the testers; usually just a day or two before the end of the iteration.

Over a year into our official Agile (PM/Excecutive sponsored) rollout this has continued to be our biggest common struggle. Keeping our QA staff busy on Agile projects often involves writing a few test cases up front and then slamming in the testing in the last 3-4 days of a 30 day Sprint.

The current mitigating ideas are:

  * Actually use an acceptance test tool like Fitnesse to give testers work to do defining and writing acceptance tests.
  * Break up functional deliveries to smaller pieces of functionality.
  * Just do the testing for the last Sprint in the current Sprint.
  * Writing GUI based regression tests on the past Sprint&#8217;s functionality.

We&#8217;re just rolling out Fitnesse on one project now so that strategy remains to be tested. 

On the idea of delivering smaller pieces of functionality, we keep running into two roadblocks. One, is that on many projects we&#8217;re splitting development between web based OO software and legacy mainframe development. On the mainframe side they have been pretty consistent in sticking to a delivery in line with the end of the Sprint. So far no progress in getting that habit to change. Second, developers see a nice time box of 30 days and they want to fill it up with coding, not figure out how to deliver small bits of functionality that can be tested individually. We&#8217;re getting better at this, but often the argument is well I want to finish all of some module before I turn it over to QA and on the QA side they don&#8217;t want to &#8216;retest&#8217;. This has been getting better with practice though.

Kicking testing over to the next Sprint is pretty much an admission of defeat, but on one particular Agile project which involves a lot of parallel mainframe development the argument just comes up each Sprint that we should just throw in the towel and test the last Sprint&#8217;s code in the current Sprint. The dangers of this are numerous and we haven&#8217;t done it yet, but it&#8217;s a common refrain in retrospectives.

Finally, we have the idea of keeping QA utilized during the Sprint better by having them write automated regression tests. This is probably one of the better ideas, but we haven&#8217;t been able to implement it all that widely. The other issue is if the GUI is going to change significantly with new functionality the QA group often argues that they don&#8217;t want to write a lot of tests they&#8217;ll have to scrap and rewrite.

No clear best solution yet, but it is an area we&#8217;ve really struggled with.