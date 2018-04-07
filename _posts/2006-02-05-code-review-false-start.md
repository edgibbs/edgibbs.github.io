---
id: 262
title: Code Review False Start
date: 2006-02-05T21:36:35+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=262
permalink: /2006/02/05/code-review-false-start/
categories:
  - code reviews
  - software development
---
It&#8217;s been two months since my teams last code review.

After spending a lot of time thinking about the best way to introduce them, and then finally rolling them out on a project, the process quickly lost momentum. The plan was to have code reviews on all new projects at first on a weekly basis, with the tech lead on each project leading the way. Instead we did [one review](http://edgibbs.com/2005/12/08/first-code-review/) which went fairly well, and then never followed up on the mandatory changes and never held another code review meeting for new code. The ball was dropped, and I was the fumbler.

Some obvious things to rethink as I get ready to relaunch them:

  * Make sure I have time to really dedicate to the process. The code review process isn&#8217;t going to happen on its own.
  * Try to rethink buy-in. Given that no developers really ran with the process, I&#8217;m certain they still have doubts about it. Of course in that case dropping the ball is a really bad way to reinforce those doubts.
  * Set my sites lower. Maybe code reviews only happen on one pilot project to begin with.
  * Possibly take over scheduling and selecting all the code for the reviews and doing the follow-up meetings. This would reinforce the commitment, but risks again getting real buy-in. (Though I&#8217;m not sure code reviews are every very easy to get buy-in on unless there is some management backing. This is also why code reviews are obviously easy if you do pair programming, but we&#8217;re really not there yet at all.)
  * Revisit tool support. Most of the team has migrated to RAD now so we could use the free [Jupiter plug-in](http://csdl.ics.hawaii.edu/Tools/Jupiter/). [Tim Shadel](http://timshadel.com/) has [a few podcasts and posts](http://timshadel.com/blog/tag/reviews) around it which make me think it might be worth considering.

One thing I did learn on the project we tried out code reviews on was that [using Checkstyle](http://edgibbs.com/2006/01/12/writing-tests-versus-fixing-checkstyle-warnings/) was the single most successful way to ensure some good coding practices were followed. The developers really wanted to knock down the warnings to practically zero which helped clean up a lot of small issues like magic numbers instead of constants or long method bodies.

<!-- Technorati Tags Start -->

Technorati Tags:
  
<a href="http://technorati.com/tag/software%20development" rel="tag">software development</a>, <a href="http://technorati.com/tag/code%20reviews" rel="tag">code reviews</a> 

<!-- Technorati Tags End -->