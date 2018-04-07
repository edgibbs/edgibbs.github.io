---
id: 68
title: CruiseControl Warnings
date: 2005-08-17T22:07:00+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=68
permalink: /2005/08/17/cruisecontrol-warnings/
categories:
  - software development
---
I get about 48 email messages from Cruisecontrol each day for one of our projects. This is not something I&#8217;m proud of since this situation has existed for at least 4 weeks now, we&#8217;ve had a broken build. The problem stems from some nasty functional tests that no one wants to investigate and we&#8217;ve sort of let our process slip.

Anyway the interesting thing is about 11:00am yesterday I started getting a broken build message every 20 seconds. Checking the messages it was apparent the compile was failing now not just some unit tests. Sadly since email is easy to filter I think all of my developers have rules now to filter the messages straight to the trash. I&#8217;ve been the holdout willing to deal with the lagging guilt every time I see a message. It didn&#8217;t take long to track down the problem which involved the common misstep of forgetting to check in all the files into CVS by one of our senior developers. Since he was at lunch I sent him an email about the offending class and they stopped after he got back from lunch.

So even when you&#8217;ve let your build get to a badly broken state, there can still be value in continuing to run Cruisecontrol. This is probably also why visuals like [lava lamps](http://www.pragmaticautomation.com/cgi-bin/pragauto.cgi/Monitor/Devices/BubbleBubbleBuildsInTrouble.rdoc) work better as reminders. Too bad about the fire hazard.