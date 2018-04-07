---
id: 101
title: Defining A Unit Test
date: 2005-09-11T09:10:37+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=101
permalink: /2005/09/11/defining-a-unit-test/
categories:
  - software development
---
[Michael Feathers](http://www.artima.com/weblogs/index.jsp?blogger=mfeathers) defined today [his idea](http://www.artima.com/weblogs/viewpost.jsp?thread=126923) of a unit test:

A test is not a unit test if:

  * It talks to the database
  * It communicates across the network
  * It touches the file system
  * It can&#8217;t run at the same time as any of your other unit tests
  * You have to do special things to your environment (such as editing config files) to run it.

Currently about 90% of the time I manage to meet these requirements with my unit tests. Still occasionally I write a functional test or an integration test. A lot of times I keep these separate and let Cruisecontrol run them. My plan is that all the true unit tests run in about .5 seconds.

One of my teams is finishing up a small project now with about 20 unit tests, but they all invoke only POJOs and depend on an in-memory implementation of the DAOs instead of starting up a hibernate session and connecting to the real database. While the project could use more tests, the tests get run fairly often because they are so fast.

Another of our projects has 700+ &#8216;unit tests&#8217;. They break pretty most of Michael&#8217;s rules. The connect to real databases and communicate across the network in test after test. The nasty part is they take 30-40 minutes to run. They never get run except by Cruisecontrol, and because they are largely large functional tests in reality they&#8217;re hard to debug and about 17 right now are failing and no one has had the heart to fix them in weeks. This of course says a lot about the project in general, but the lack of focus on true unit tests has always really hurt.

My sense is out in the real world, a lot of people who bother to write unit tests mostly write functional tests that often connect to a real database. No wonder they don&#8217;t see much value in them.