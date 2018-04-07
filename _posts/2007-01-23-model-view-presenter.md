---
id: 521
title: Model View Presenter
date: 2007-01-23T23:14:08+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/01/23/model-view-presenter/
permalink: /2007/01/23/model-view-presenter/
categories:
  - software development
  - test driven development
---
Spent some time watching a [screencast](http://www.testing.com/cgi-bin/blog/2007/01/05#wireframe2) by Brian Marrick on Model-View-Presenter instead of Model-View-Controller. It would appear from the screencast that views have everything possible scraped out and popped into the presenter. It uses the Observer pattern and simply fires off events when things like buttons are pressed. The view layer is very thin made up mostly of getters and setters and probably is to simple to bother testing. The presenter is listening for events and acting on them. Code you might actually want to test goes into the Presenter layer.

When I have some time I think I may need to dig into an actual example to get the idea.