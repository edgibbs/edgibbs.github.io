---
id: 335
title: Developing With Mocks When Development is Down
date: 2006-04-27T21:42:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=335
permalink: /2006/04/27/developing-with-mocks-when-development-is-down/
categories:
  - software development
  - test driven development
---
One unexpected bonus of implementing TDD in our shop came up this week. Mocks can be a development tool as well.

The situation is pretty simple, our legacy development environment is down. Since it is our main data source on the project in the past this would have left the team dead in the water. Turns out they&#8217;ve mocked all of the DAOs that return some predetermined data using Spring. No developer downtime at all. Of course they can&#8217;t turn over the current new code for testing by QA against the real legacy system, but at least they can continue on without interruption. They didn&#8217;t even really mention the mainframe environment being down as an impediment in the daily Scrum.

So mocks have come in handy not just for a lot more than enabling unit testing. If you have to depend on some flakey resource they can be a lifesaver.