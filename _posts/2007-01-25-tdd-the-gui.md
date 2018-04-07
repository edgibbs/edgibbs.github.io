---
id: 523
title: TDD the GUI
date: 2007-01-25T21:54:20+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/01/25/tdd-the-gui/
permalink: /2007/01/25/tdd-the-gui/
categories:
  - software development
  - test driven development
---
Dan Bunea recently posted on doing [TDD with a web application](http://danbunea.blogspot.com/2007/01/test-first-web-applications-tdding.html). Since I&#8217;m currently cobbling together a similar TDD JSF example to use for a seminar in my organization I found Dan&#8217;s approach enlightening.

Dan begins at the completely at the front end writing a Selenium test against the initial page of an application where you add a user. He then builds the ASP pages in this case since it&#8217;s a .NET example and goes on to dig through the controller and business layers testing all the way to the database. He goes ahead and writes an integration test that tests the database during this process.

The integration test isn&#8217;t pure TDD, but I&#8217;ve taken the same approach in regards to my example so far instantiating an in-memory database with HSQLDB because I don&#8217;t really feel the need to rely on mocks to test my service and DAO objects.

I also differ in that I started at the controller and worked my way back, only developing the UI as a last step. My favorite approach is to try and ignore the GUI when doing development until the last step, though many people find that starting with the visual GUI layer is an easier starting point.

All in all a fairly good example of how you might approach TDD on a webapp.