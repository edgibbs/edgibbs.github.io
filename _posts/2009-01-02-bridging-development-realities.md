---
id: 696
title: Bridging Development Realities
date: 2009-01-02T23:43:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=696
permalink: /2009/01/02/bridging-development-realities/
categories:
  - automated builds
  - code reviews
  - software development
  - test driven development
---
<div align="center">
  <img src="/images/bridge.jpg" />
</div>

Denis over at [One Brike At a Time](http://digitalbrikes.com/onebrikeatatime/2008/12/31/the-enemy-within/) recently expressed frustration at having to use low trust practices:

> It used to be that I did not care much for defensive programming outside of a system&rsquo;s boundaries. It used to be that I did not really care or believed in strict source control (as in authorise only some people to touch a particular file). It used to be that I did not really believe in code reviews.
> 
> I now care for these and it is not a good thing. I care about these things because I do not trust the developers I work with to do the right thing, whether it is making the code better, improving their style, teaching me new things, or even write decent unit tests. 

The frustrations are real. Teams are often at many different levels of skill and experience. Even minimal unit testing is not a common practice in many shops. You can still find developers who look surprised when you ask where their code is checked in. 

Lower trust practices can be a bridge:

  * Source control is a given. Developers who check in bad code you might force you to lock things down for now. Continuous integration is a way to grow out of this. If all of your projects are being built with any change, you can quickly discover if someone&#8217;s injected some issues. This might mean setting up notifications for even successful builds for non-active projects.
  * Code reviews don&#8217;t have to be a negative. I&#8217;ve used them and still use them more for mentoring than as an audit of bad code. Code reviews are easy to get wrong, but used safely they can improve the code base and improve your coders through sharing. And I always leave the easy out&#8211;no code reviews if you&#8217;re pair programming.
  *