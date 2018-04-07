---
id: 306
title: 'Code Review #2'
date: 2006-03-25T23:21:54+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=306
permalink: /2006/03/25/code-review-2/
categories:
  - code reviews
  - software development
---
We held our second code review this Friday. Two months between holding code reviews is a little long, but we&#8217;re still working out the process. Some things to remember for next time:

  * Prepare for the code review ahead of time. This code review was being held towards the end of the Sprint, so the afternoon before we got it arranged. Some review is better than none, but the code review ended up being more of a code walk-through.
  * Adding a static analyzer like [Checkstyle](http://checkstyle.sourceforge.net/) really helps with keeping the code clean. Since the developers had spent a good bit of time working down 150+ Checkstyle warnings to 9 there were very few basic defects, like one character variable names, or really long methods.
  * Figure out a better way to do followup. After 90 minutes we had a number of items to fix, but since they were handwritten notes by all the participants it will be a bit difficult to check up on. We may get a chance to use a tool like [Crucible](http://www.cenqua.com/crucible/) the next time around.
  * Next time don&#8217;t even hold the review until all the classes covered have tests. Two of the reviewed classes had zero test coverage.

On the positive side we found quite a few subtle defects in 90 minutes from cut and paste errors to iterating over collections that only had one item. I think the three of us were all in agreement that having new pairs of eyes on the code was really helpful in catching some things.