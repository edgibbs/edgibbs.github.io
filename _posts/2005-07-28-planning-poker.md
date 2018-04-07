---
id: 50
title: Planning Poker
date: 2005-07-28T22:29:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=50
permalink: /2005/07/28/planning-poker/
categories:
  - software development
---
As a way of introducing a game, I&#8217;ve started to implement planning poker to estimate a Product Backlog, aka feature list, for two of my project teams. The experiments have gone fairly well so far. Basically everyone reviews the list of user stories, use cases, features, or tasks hopefully be then the poker rounds start:

  1. You hand out a stack of cards with numbers on them 1,3,5,8,11,13.
  2. You explain that the numbers are &#8216;story points&#8217; and simply represent the relative complexity of a task.
  * A &#8216;1&#8217; might be creating an error message popup.
  * A &#8216;5&#8217; might be implementing validation of a HTML form.
  * A &#8217;13&#8217; might be implementing some complex set of business rules in a rules engine that no one is familiar with.

  3. Then you start with the first item.
  4. Everyone selects the card they thing corresponds to the estimate for that item.
  5. On the count of 3 everyone reveals.
  6. If everyone is the same you&#8217;re done.
  7. If there are differences people speak up about why they thought it was a 3 versus a 5 until everyone&#8217;s had a chance to comment.
  8. Then you repeat the process. At this point generally estimates start to converge. If need be run a round or two more.
  9. Continue until you run out of items.

The developers I&#8217;ve sprung this on so far seem to enjoy it at least for the novelty period. The group today was a bit disappointed though that it didn&#8217;t involve real money and poker chips. You then use the estimated story points to plan your iterations based on what the team thinks they can do. I&#8217;m experimenting with this still, but the general idea comes from [Mike Cohn](http://www.mountaingoatsoftware.com/) one of the heavyweights in the Scrum arena.