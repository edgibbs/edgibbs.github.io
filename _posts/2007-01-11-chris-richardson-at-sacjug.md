---
id: 509
title: Chris Richardson at SACJUG
date: 2007-01-11T23:04:46+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/01/11/chris-richardson-at-sacjug/
permalink: /2007/01/11/chris-richardson-at-sacjug/
categories:
  - software development
  - test driven development
---
On Jan 9th, 2007 [Chris Richardson](http://chris-richardson.blog-city.com/), author of [POJOs in Action](http://www.chrisrichardson.net/pia.html), gave a [talk](http://www.sacjug.org/) on POJOs using Spring and Hibernate. The talk was a pretty good overview and I learned a few things along the way. Chris&#8217;s current preferred TDD development stack is:

  * HSQLDB
  * Hibernate
  * Spring
  * Jetty
  * Selenium

The idea is to avoid anything that will slow down testing hence an in-memory HSQLDB, Jetty, and Selenium to deal with the view layer testing. Chris also expressed that he was really happy with using Selenium, which just gives me another reason to spend some time and actually try out Selenium. He also starts up Jetty in debugging mode to avoid having to do many restarts.

He was of the opinion that you really shouldn&#8217;t use Spring in unit tests. The dependencies are something you should probably mock, and Spring beans get in the way of unit tests. On most of our projects were just using a testing specific Spring contexts for the tests, so it might be worth exploring just taking out the Spring dependencies.

His opinion of options like EJB3 was that he wasn&#8217;t too impressed and out of the app servers he really disliked Websphere. 

And again on the note of thought leaders who started off in things like Smalltalk, Chris explained he started out doing Common Lisp, and then mistakenly took a job doing C++ just because it was a 50% pay raise.