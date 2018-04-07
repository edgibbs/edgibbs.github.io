---
id: 239
title: Writing Tests Versus Fixing CheckStyle Warnings
date: 2006-01-12T22:36:13+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=239
permalink: /2006/01/12/writing-tests-versus-fixing-checkstyle-warnings/
categories:
  - scrum
  - software development
  - test driven development
---
One one of my projects where we&#8217;ve now got a reasonable amount of unit test coverage I did notice a peculiar trend. I&#8217;ve been emphasizing with the development team that we want to move to TDD from running a day long class with all of them to posting daily charts of the number of unit tests and the percentage of unit test coverage everyday outside my cubicle wall. I think I&#8217;ve been pretty clear on my expectations.

So on this project the developers wrote basically almost zero tests for the first 1.5 Sprints. Then after the felt they&#8217;d nailed most of the functionality they started to get around to refactoring, fixing [Checkstyle](http://checkstyle.sourceforge.net/) warnings, and writing tests. As it turned out there were initially a lot of Checkstyle warnings about methods that were too large, or lines that were over 120 characters, or imports that weren&#8217;t needed, at least several hundred. There were also virtually zero tests.

They did start writing a few unit tests, but they quickly got more interested in fixing Checkstyle warnings. Given an option between fixing a Checkstyle problem and writing a unit test they would choose doing a Checkstyle fix. My intuition tells me that this stems from:

  * A lot of the Checkstyle warnings were low hanging fruit and just faster and easier to fix like lines that were over 120 characters or longer methods that needed simple extract method type refactorings.
  * They could see faster progress fixing the Checkstyle warnings since it went from say 800 warnings down to less than 100 in the space of a few days.
  * Not being that familiar with unit testing and realizing they had to write a large number of tests for all of their code the task seemed simply more daunting. The benefits also seemed less obvious since they weren&#8217;t using TDD to drive their design.
  * They still aren&#8217;t completely sold on the benefits of writing unit tests, though they did realize they were catching some things they missed initially like a lot of situations that could result in null pointer exceptions.

According to [Ken Schwaber](http://www.controlchaos.com/) his recommendation is to wait about 6 months after introducing Scrum before you start to introduce many of the XP practices, because the team is going to have a hard enough time getting adjusted to Scrum. I remember nodding along in agreement when Ken mentioned this.