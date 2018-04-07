---
id: 1061
title: Deleting Unit Tests
date: 2015-09-28T20:52:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1061
permalink: /2015/09/28/deleting-unit-tests/
categories:
  - software development
  - test driven development
---
I regularly delete some of my unit tests, sometimes within minutes of writing them. Even as a TDD fanatic I&#8217;ve come to realize tests are just a means to an end. If I decide to write a constructor test when first designing a bit of code and delete it a few minutes later, nothing&#8217;s wrong. These sorts of initial tests can become redundant quickly since to you have to construct the object for all the later tests.

As you adjust to TDD there&#8217;s a tendency to see the tests as important code. Deleting them is the last thing you&#8217;d think of doing. It turns out just like with production code less tests are better easier to maintain and easier to refactor. And as an added benefit your test suite runs faster. Tests are path to good code and you get an added benefit of a regression suite. And besides everyone&#8217;s favorite checkins are ones where you remove more lines of code then you add.