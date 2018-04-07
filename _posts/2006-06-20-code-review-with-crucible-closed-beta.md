---
id: 377
title: Code Review With Crucible Closed BETA
date: 2006-06-20T21:40:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=377
permalink: /2006/06/20/code-review-with-crucible-closed-beta/
categories:
  - code reviews
  - software development
---
![](/images/crucible_logo_small.gif)
  
Yesterday I went through an install of [Crucible](http://www.cenqua.com/crucible/) on our development server. It runs on top of their Fisheye product. I&#8217;ve actually been waiting a long time to check it out.

Install and configuration wasn&#8217;t bad, maybe an hour and mostly to have [Fisheye](http://www.cenqua.com/fisheye/) index part of our CVS repository. Just for an experiment I grabbed one random file and started a review. The workflow has a minimal number of stages which is just fine. 

**create** &#8211;> **approve** &#8211;> **review** &#8211;> **summarize** &#8211;> **close**

I setup the review and added about 5 comments. The other reviewer who had only seen a quick demo of Crucible months ago then added a response to the 4 comments, fixed one issue and checked it back in. I went back in and summarized the change and closed the review.

The impressive part was with no real explanation, the whole review took about 30 minutes asynchronously. Even though this is a pretty early beta it&#8217;s mature enough for us to start using for our reviews. And since it&#8217;s so lightweight we&#8217;ll probably end up doing more reviews. When I went over and talked to the developer on the review he mentioned we might not even have to have a formal review meeting.

Overall it appears to be a good fit for us, even if it took about 2 years from it&#8217;s initial announcement to get to this stage.