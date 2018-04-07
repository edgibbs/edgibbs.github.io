---
id: 294
title: Readable Code Through Domain Driven Design
date: 2006-03-13T23:05:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=294
permalink: /2006/03/13/readable-code-through-domain-driven-design/
categories:
  - conferences
  - software development
---
I went to a hands-on tutorial today by [Eric Evans](http://domainlanguage.com/about/ericevans.html) on [Domain Driven Design](http://domaindrivendesign.org/index.html). It&#8217;s one of those less specifically technical areas that is harder to pull off, but Eric made a pretty good effort with about 30 of us. 

Domain Driven Design as presented is primarily the search for a good domain model through a ubiquitous language. The end result is that writing the code should really expressive of the underlying domain. Something like:

<pre>billDate.month().end().plus(allowedWaitBeforePayment)</pre>

In English this easily translates to:

> For the end of the month on the billing date add a certain number of days before payment is due.

It&#8217;s still Java so it has some syntactic noise that&#8217;s hard to avoid, but it is approaching more readable code.

Some key ideas:

  * A model not reflected in the code is irrelevant. (ie MDA)
  * UML should mostly be done messy on a whiteboard.
  * Try to verbalize the concepts you describe in a model to eliminate awkwardness.
  * Not a big fan of getter/setter.
  * Primitive data types are bad. (float for money)
  * Business people will not use your modeling tool.
  * It&#8217;s OK tho have multiple models in different contexts if they have clear boundaries.
  * Object reuse often hasn&#8217;t worked well because sharing objects across different contexts. A person object who&#8217;s an employee in your financial system doesn&#8217;t actually carry over to a person object in your CRM system.

The class was thought provoking enough to nudge me to pick up his [book](http://domaindrivendesign.org/book/index.html) on Domain Driven Design.