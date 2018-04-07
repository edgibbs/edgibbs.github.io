---
id: 481
title: Testing in the Next Sprint
date: 2006-11-23T21:31:53+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=481
permalink: /2006/11/23/testing-in-the-next-sprint/
categories:
  - acceptence testing
  - scrum
  - software development
---
[Elizabeth Hendrickson](http://testobsessed.com/wordpress/) is blogging quite a bit recently which can only be a good thing. In a recent post she takes on the problem with getting all the testing done in a Sprint:

> The team decided to relieve the pressure on the testers by moving the test effort into the next Sprint. So the features developed in Sprint 1 would be tested in Sprint 2. The features developed in Sprint 2 would be tested in Sprint 3. During each Sprint, the developers worked on the new features while the testers tested the features already developed.

On at least [one project](http://edgibbs.com/2006/10/08/getting-testing-done-in-a-sprint/) we&#8217;ve had exactly this solution proposed but not implemented. On several others this has happened for at least one Sprint when the developers turned over the final bits of code right at the end of the Sprint leaving little or no time to get the testing done within the Sprint.

Elizabeth has some ideas about how to avoid this situation:

  * QA/Test participates in the Sprint Planning Meeting.
  * Testing tasks are included in the Sprint plan.
  * Hands on testing begins the minute there&rsquo;s code checked in and available to test.
  * Developers and testers collaborate on test automation.
  * The team deals with bugs immediately.

We already include QA as full members of the team which means their tasks are included in each Sprint plan. And we fix defects as quickly as possible.

What we&#8217;re not so good at yet is doing testing as soon as things are coded and checked in. Often testers want completed code with the GUI done before starting testing. And developers aren&#8217;t looking for ways to make it testable earlier.

Finally, on developers and testers collaborating on test automation, we&#8217;ve just gotten started utilizing Fitnesse for acceptance tests. Hopefully this will prove to be a major boon once we get further down the road.

The tough part of this collaboration is that developers expect QA to figure out how to test not necessarily how to collaborate. It&#8217;s a similar gripe to the idea that I&#8217;ll start coding when they&#8217;ve nailed down 100% of the requirements. On the test side &#8220;the testers may balk at having to test unfinished code.&#8221; Despite adopting Mercury&#8217;s Quick Test Pro for our GUI driven testing, we&#8217;re four sprints in on a project with no automated GUI tests because the tester figures the user interface is still in too much flux.

So this is still a hard gap to close, but this approach gives me evidence we&#8217;re headed in the right direction.