---
id: 666
title: Business Users As Developers
date: 2008-09-14T19:35:42+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/09/14/business-users-as-developers/
permalink: /2008/09/14/business-users-as-developers/
categories:
  - acceptence testing
  - software development
---
> Getting DSLs to be business readable is far less effort than business writable, but yields most of the benefits.
> 
> &#8212; [Martin Fowler](http://www.martinfowler.com/bliki/DslQandA.html)

Software transparency to business experts is a great goal. I&#8217;ve met plenty of sophisticated business users who at least could do some basic SQL and whip together lots of nice reports in Excel. Those same users when presented with Java code lean back in their chairs and wait for the developer to show them a screenshot. Getting a DSL they can actually read and give feedback on means higher quality software.

I can&#8217;t claim to have reached this goal despite some attempts. So far the closest was a Fitnesse implementation validating business rules in some vendor software. The testers really took on creating scenarios after it clicked for them, but the business analysts still found it a bit to rough around the edges. Baby steps.

Fowler nails the point of DSLs from a business perspective. It sounds great to talk about business users writing the rules for the software. Every rules engine vendor makes this claim. In practice I&#8217;ve never seen it happen. Developers end up writing the business rules in the syntax of the particular engine. 

Creating readable DSLs is great if you can communicate with the business experts. And even if you fall short the developers/testers get clear concise code out of the exercise.