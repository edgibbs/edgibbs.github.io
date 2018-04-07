---
id: 616
title: Moving a Team to Journeyman Developers
date: 2007-08-21T04:43:50+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/08/21/moving-a-team-to-journeyman-developers/
permalink: /2007/08/21/moving-a-team-to-journeyman-developers/
categories:
  - software development
---
[Fred George](http://processpeoplepods.blogspot.com/2007/07/masters-journeymen-and-apprentices-part.html) has broken developers into three broad groups of apprentices, journeymen, and masters. Based on this classification our team is moving from apprentice to journeymen currently.

He defines apprentice level programmers as:

> An apprentice in OOP is a effective programmer and can construct loops, methods, and classes, but is still learning how to separate the business problem into objects. Encapsulation is being learned (which means no getters or setters for the classes). Code is being placed into the appropriate classes rather in giant god class. if statements litter the code as the apprentice is still learning design patterns to eliminate them. Class sizes and method sizes tend to be larger than smaller. Code requires comments to aid in understanding, and blank lines are common in the middle of methods to group code together. An apprentice is beginning to understand the patterns of bad code (the imfamous code smells), but lacks the tools to understand how to eliminate them.

Some of our developers are still dealing with this level, especially considering object oriented concepts can take a while to bake in. Lots of **if** statements in some code is still a sign that we have a ways to go. The blank lines in the middle of methods are great visual clues that a developer still needs some help refactoring.

Journeymen are defined as:

> The journeyman is adept in OOP techniques. The classes exhibit crisp conceptualizations distinguishing them from each other. Boundaries are clear; methods are small. Design patterns are common, and exist in inverse proportion to the number of if statements. else statements are quite infrequent, and case statements have vanished. (I write about one case statement every 18 months or so.) Given a problem and a broad outline of a design, journeymen will implement it with little need for supervision or support.

When I see the rare if statement in a code review it will be a happy day.