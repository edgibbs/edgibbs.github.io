---
id: 349
title: Incremental Agile
date: 2006-05-13T19:47:34+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=349
permalink: /2006/05/13/incremental-agile/
categories:
  - automated builds
  - code reviews
  - scrum
  - software development
  - test driven development
---
In [Practices of an Agile Developer](http://www.pragmaticprogrammer.com/titles/pad/), [Venkat Subramaniam](http://www.agiledeveloper.com/blog/) and [Andy Hunt](http://toolshed.com/blog/) layout how a technical manager might incrementally introduce Agile practices. There suggested list is:

  * Introduce Agile ideas
  * Setup standup meetings
  * Bring architects into the fold
  * Start informal code reviews
  * Add version control
  * Add unit testing
  * Add build automation

I can vouch for most of this advice, because before Practices of an Agile Developer existed this is pretty much how I started introducing practices on my team two years ago.

I inherited a large project in which all 10 of my developers were working at the time. The project was a classic big design up front train wreck kind of project and most of the developers were burned and demoralized. 

I came into the organization determined to finally implement something like Scrum. At my previous professional services firm, I had to work within accepted fixed bid contracts with conservative customers and very little leeway. This environment was a chance to really implement a better way through Agile (OK, I can be a bit idealistic). 

I setup a standup meeting with all the developers a few weeks after I started. I had to get ahold of where the project was on a daily basis and it forced the developers to share information on the different modules they were working on. A bit of grumbling intially, but they came to see the value in it after a little while and we had a much better idea where we stood. I was excited I had snuck in a Scrum practice, but I didn&#8217;t go around calling it that yet because I was still fairly new.

I didn&#8217;t have architects on the project, but I did have only 2 of 10 developers writing the back-end code where 80% of the work was. After some prodding I got them to understand that we were going to have to mentor up more developers if we ever hoped to get the project done. By the end of the project everyone was able to work on the back-end code.

Next suggestion would be informal code reviews. We talked about this, sort of buddy type reviews, but we really never implemented them. After two years we&#8217;re just now implementing code reviews, and I can see why we should have done it so much sooner.

Luckily we had version control, unit testing, and an automated build in place. There were big issues with out unit tests though. They were largely integration tests and they were brittle. One of the developers had Cruisecontrol up and running so we had that covered, but since the integration tests were often failing we&#8217;d have broken builds for weeks at time. 

These were some of the hardest areas to really implement, with unit testing being the most difficult. Due to some architectural decisions in using a enterprise level rules engine writing unit tests was next to impossible. At least at the time I felt that way, had I been around for the beginning of the project, I probably would have avoided the enterprise rules engine in favor of a simpler solution that was testable. It&#8217;s turned out that implementing true TDD and code reviews have taken longer than I hoped, more like 2 years.

As a sidenote the large project I inherited was killed off by the customer after we delivered to the final specification. Adopting Agile practices is no guarantee you can save any project.