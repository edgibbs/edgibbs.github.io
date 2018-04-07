---
id: 480
title: Code Review Evolutions
date: 2006-11-21T23:09:20+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=480
permalink: /2006/11/21/code-review-evolutions/
categories:
  - code reviews
  - software development
---
We&#8217;re well into a [year of introducing code reviews](http://edgibbs.com/2006/10/26/manager-code-reviews/) and I&#8217;ve noticed a continued evolution over that year.

  * At first we used no tools, printed out the code ahead of time, and then walked through it with an overhead and a projector in a formal meeting.
  * Then we introduced tools, first Jupiter and then Crucible. We&#8217;re still using Crucible.
  * We also discovered that static analyzers like Checkstyle helped avoid a lot of more basic issues with the codebases before the review.
  * Initially we hoped to do at least one review on a project every week or two.
  * Now we aim for one review per Sprint on a project. It goes in as a general task each Sprint. Of course this means you might only review a few classes every month.
  * We&#8217;ve gradually reduced the number of classes reviewed from 5+ to 2-3 per review.
  * As we&#8217;ve adjusted to Crucible and it&#8217;s lightweight online style, we&#8217;ve dropped almost all the formal meetings unless we need to meet to discuss a design issue that crops up.

I feel like we still have a ways to go, but we are getting a lot of mentoring out of the effort and I think it helps everyone to know there code is going to be read by a few developers at some point, so they&#8217;re more likely to keep things clean along the way.

Buddy style review might be the next experiment or something akin to Kevin Klinemeier&#8217;s [idea](http://zipwow.blogspot.com/2005/05/combining-code-review-with-paired.html) of sitting down and making any changes that come up with the code under review to be done right there in the code review. I really like the idea of completing the review and being done/done with the agreed to fixes.

As per our experience, code reviews have been a gradual experimentation and evolution towards a balance of lightweight approaches and thorough reviews. I don&#8217;t think we&#8217;re they&#8217;re yet, but we&#8217;re getting closer.