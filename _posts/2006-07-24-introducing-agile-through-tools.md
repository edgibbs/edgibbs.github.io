---
id: 406
title: Introducing Agile Through Tools
date: 2006-07-24T21:23:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=406
permalink: /2006/07/24/introducing-agile-through-tools/
categories:
  - code reviews
  - project management
  - scrum
  - software development
  - test driven development
---
I&#8217;m a tools guy. I love to try out new tools. I get excited by the most boring of build tools like ant, maven, or rake or even code review tools like Jupiter or Crucible. In the book [Applied Software Project Management](http://www.stellman-greene.com/aspm/) they introduce the concept of building support for change through tools:

> Another way to approach this situation is to pitch the changes you want to implement as technical tools, rather than as core software engineering concepts. Most people who have been in the field for a long time are used to routinely applying new technical tools that have never been tested in the organization. This is also a good way to gain concensus among the programming team for your ideas.
> 
> &#8212; pg 217 [Applied Software Project Management](http://www.stellman-greene.com/aspm/)

If a tool can help with adoption of a new process I think it can make sense, but it&#8217;s a dangerous path. Relying on tools for everything can force you into things like Model Driven Architecture. And sneaking practices in with tools is a might bit disingenuous and less than fully transparent. I prefer to use tools to support practices I&#8217;m introducing. 

Some tools make the practice possible:

  * Cruisecontrol for Continuous Integration.
  * JUnit for unit testing.

Some make merely support the practice and make it easier:

  * Clover to help with TDD.
  * Crucible to help with code reviews. (especially if you&#8217;re not pair programming)
  * Checkstyle to help with code reviews.

Tools can support multiple practices much as XP practices support one another. Pair programming reduces the need for written documentation, enforces real time code reviews, and leads to collective ownership of the code.

Finally, never be afraid to ditch a tool that really isn&#8217;t working. I tried using XPlanner for managing a Scrum project, but it really just took more time than it was worth so I dropped it after a single Sprint. If you&#8217;re fighting the tool or caught up in tool complexity you&#8217;re better off stepping back and dropping it.