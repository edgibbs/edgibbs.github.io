---
id: 736
title: Compromising Quality for Schedule
date: 2009-04-28T05:12:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=736
permalink: /2009/04/28/compromising-quality-for-schedule/
categories:
  - software development
  - test driven development
---
I found myself silently cheering for Uncle Bob as he described a recent presentation where the speaker had just about given up on ever getting better code quality, because businesses didn&#8217;t value it.

> His claim that crappy code is inevitable is based on the notion that crappy code is cheaper than clean code, and that therefore businesses will demand the crap every time. But it has generally not been business that has demanded crappy code. Rather it has been developers who mistakenly thought that the business&rsquo; need for speed meant that they had to produce crappy code. Once we, as professional developers, realize that the only way to go fast is to create clean and well designed code, then we will see the business&rsquo; need for speed as a demand for high quality code.
> 
> &#8212; [Bob Martin](http://blog.objectmentor.com/articles/2009/04/23/crap-code-inevitable-rumblings-from-accu) 

Ken Schwaber makes a similar point that dropping code quality to make a date devalues a core asset of your company, the code base. As a line employee you don&#8217;t have the authority to even consider making that decision.

I&#8217;ve always found this to be a compelling argument for code quality. If your organization has headed down this path for long your code base is a mess. Sacrificing quality for perceived speed to hit a date is a bad practice. Most of the code base is painful even to look at. Maintenance sucks up your limited developer time. There are hidden costs even with new enhancements since small changes can take weeks as a developer digs into the spaghetti code by hand on code that rarely even has the start of a test harness.

The difficulty of course is this is a common method of operation. The PM informs a developer of some date in the future that they need this new critical enhancement. The developer may bravely say that the date isn&#8217;t reasonable. More pressure is applied to find a way to make it work. Well, there might be a way let me get back to you. 

The developer sends an email a little later explaining that they&#8217;ll do their best and they think they can get the feature done. What they don&#8217;t explain is:

  * To get this done in time I&#8217;m probably not going to add any tests.
  * I don&#8217;t have time to refactor so I&#8217;ll probably add more lines to some of the system&#8217;s giant classes and mix business logic into the view and controller layer.
  * I may have to work some late hours, I&#8217;ll be tired and inject new bugs due to this.
  * I&#8217;ll do a bit of manual unit testing and declare it done well enough to push over to QA. In reality I know it has lots of bugs, but I met the date.
  * The next developer who takes on code here will spend even more time trying to figure out the code I added.
  * I met the date, but I feel guilty over once again compromising on my own personal standards of quality.

Here&#8217;s to hoping Uncle Bob&#8217;s vision wins out.