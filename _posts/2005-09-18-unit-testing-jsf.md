---
id: 108
title: Unit Testing JSF
date: 2005-09-18T22:35:31+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=108
permalink: /2005/09/18/unit-testing-jsf/
categories:
  - software development
---
It occurred to me that if JSF is starting to see a lot of adoption, that there&#8217;s probably some testing framework for it, possibly to mock up things like FacesContext. Sadly it doesn&#8217;t appear as though there is much thought given to how to test JSF even though testing GUIs has been a pain point for a while now as seen in this [post](http://www.jroller.com/comments/robwilliams/Weblog/jsf_s_achilles_heel) by [Rob Williams](http://www.jroller.com/page/robwilliams/Weblog):

> The one thing that I bet is not even on the radar of the JSF team, but I would peg as its biggest shortcoming is its ill-disposition toward testing. 

In the comments [Rick Hightower](http://www.jroller.com/page/RickHigh) mentions having mocked a FacesContext object to get around some things, though there&#8217;s no code to be seen. This was the best I could find after a lot of searching on how to unit test JSF. Something seems to be giving off a bad smell and I don&#8217;t think it&#8217;s my daughter&#8217;s dirty diaper.