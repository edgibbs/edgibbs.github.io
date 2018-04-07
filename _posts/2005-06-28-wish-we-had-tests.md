---
id: 22
title: Wish We Had Tests
date: 2005-06-28T22:33:39+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=22
permalink: /2005/06/28/wish-we-had-tests/
categories:
  - software development
---
Working through some nasty NullPointer exceptions on a project now. It was a fairly well done project, no unit tests but run as an experimental Scrum project and all of the developers were fairly good about testing the apps by hand. Way too much deployment to Tomcat, but it seemed to meet the requirements and it worked OK for the first phase.

So the second phase includes more functionality, but again the developers seemed to deliver another solid release. Then everyone went on vacations as QA continued testing. Somehow some basic defects were missed or introduced accidentally. Since they&#8217;re aren&#8217;t any unit tests to speak of, it&#8217;s become painful to find the bugs. If we had been doing real unit testing we&#8217;d have tests for these cases and we&#8217;d be passing in nulls to make sure they were handled. Anyway it&#8217;s more ammunition now for adding unit tests to all our new projects. Tomorrow we&#8217;ll try to add test cases and solve the issues, no sense in continuing legacy code.