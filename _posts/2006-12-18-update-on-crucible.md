---
id: 493
title: Update on Crucible
date: 2006-12-18T22:20:31+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=493
permalink: /2006/12/18/update-on-crucible/
categories:
  - code reviews
  - software development
---
[Peter Moore](http://www.cenqua.com/forums/profile.jspa?userID=3) from Cenqua Software stopped by for a customer visit late last week. Turns out he&#8217;s in the Bay area for a few months and Sacramento is just a short jaunt down the road.

We&#8217;ve been beta testing [Crucible](http://www.cenqua.com/crucible/), their code review tool, since June. We&#8217;re pretty happy with it as it fits the lightweight toolset quite nicely. It also comes bundled with [Fisheye](http://www.cenqua.com/fisheye/), which at first glance seemed like a simple browsesable CVS repository. Fisheye has turned out to a useful addition alerting people to the direction of our entire corporate codebase is going. Everything from noticing direct JDBC calls in some old code to people deciding to check a PHP project into:

<pre>/source/java/php</pre>

Anyway Pete asked for our overall impression of Crucible, features that we thought might be missing, things that bugged us about the product. We have had a few things:

  * Currently Crucible sends an email after every comment, this ends up being a lot of email for coders used to only getting 5-10 emails per day.
  * When setting up a review it defaults to the latest diff of a file instead of the whole file. Since we&#8217;re not nearly that rigorous it makes more sense to review the entire file when we do a code review. You can switch it to the whole file, but you have to remember a few extra clicks.
  * The whole thing has a nice AJAX flavor, simply click anywhere in the code and add a comment right away, but some of the button labels and layouts still confuse a few of our developers. So a little more usability polishing might be in order.

None of these issues are really big deals for us and given the functionality available even in June we would have gladly purchased it at that point. So if you&#8217;re looking for a really lightweight web based code review tool, Crucible is worth checking out.

Sounds like it will come out of early beta in the near future so more people can take a look at it for themselves. Without necessarily meaning to they&#8217;ve carved out a small niche with a lightweight review process versus many of the heavier process tools. And it&#8217;s really nice as I&#8217;ve said before [to deal with a small shop](http://edgibbs.com/2006/09/05/service-in-small-shops/) of pure developers who build tools for other developers.