---
id: 304
title: Test Driven Adoption Poll
date: 2006-03-23T21:50:22+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=304
permalink: /2006/03/23/test-driven-adoption-poll/
categories:
  - automated builds
  - software development
  - test driven development
---
[Methods and Tools](http://www.methodsandtools.com/dynpoll/oldpoll.php?UnitTest) online magazine ran an actual poll on TDD within software organizations. The poll had 460 total votes. The poll asked the question how is unit testing performed at your location?

![](/images/tdd_adoption_chart.png)

So TDD adoption is still slow going, which has been my [anecdotal experience](http://edgibbs.com/2005/07/30/how-deep-is-tdd-adoption/) as well. The nice thing is if you can get there you gain a large competitive advantage over the 59% of shops that don&#8217;t really do any unit testing. My guess is informal unit testing means hardly any unit tests, or one developer is trying to do them and everyone else is ignoring them entirely.

I&#8217;m not really sure what the documented unit test cases are. Does this just mean that the unit tests are described in some documentation? And does the documentation of execution mean the tests are run through cruisecontrol or a similar tool? No way to know the answers to these questions. 

My group is writing unit tests, typically after the fact, so not true TDD. Still that&#8217;s our end goal and a few developers are doing some TDD. We also have cruisecontrol executing all our tests with every code checkin.

The promising suggestion of this poll (unscientific of course) is that TDD is making headway with developers despite the initial alien feeling of writing tests first.