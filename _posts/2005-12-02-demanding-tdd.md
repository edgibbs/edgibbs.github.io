---
id: 204
title: Demanding TDD
date: 2005-12-02T21:04:38+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=204
permalink: /2005/12/02/demanding-tdd/
categories:
  - automated builds
  - code reviews
  - software development
  - test driven development
---
I came across a post explaining why you should [stop demanding pair programming](http://feeds.feedburner.com/theagileblog/Kvkb?m=13). Alex Pukinskis&#8217;s argument is that selling pair programming really doesn&#8217;t work. 

> This is a difficult transition, and so you can&rsquo;t force people to pair, any more than you can force them to wear a tie to work. Demanding pairing just doesn&rsquo;t tend to work well.

This dovetails with my present experiences trying to implement TDD with my developers. I just can&#8217;t get them to write the tests first, and I can barely get them to write the tests at all. So hopefully his suggested solution will be the answer for me:

  * Stop trying to force them to pair
  * Stop expecting 100% pairing
  * Set up your space to make it easy to pair
  * Create a &#8216;lab&#8217; with pairing workstations that are more desirable than individual workstations

That sounds pretty close to what I&#8217;ve tried. I&#8217;ve implemented the following:

  * Running a TDD day long class.
  * Lining up smaller sessions to teach about mock objects, testing databases, JSF, etc.
  * Volunteering to pair with any developer having trouble writing tests.
  * Implementing code reviews with one of the mandatory requirements being that the reviewed code has unit tests.
  * Explained that part of this years evaluation will be on how well they adopt unit testing.
  * Requiring an automated build with cruisecontrol that includes a test target and a clover task that reports the unit testing coverage percent.
  * When I implement weekly one-on-ones one of the questions each time will be, &#8220;So how many tests did you write this week?&#8221;

None of these approaches have paid off just yet. I&#8217;m hoping it&#8217;s just going to be a longer process or maybe after all of our new technology adoption dies down that the TDD adoption will ramp up.