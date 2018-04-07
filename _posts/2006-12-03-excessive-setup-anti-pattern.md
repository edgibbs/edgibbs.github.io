---
id: 486
title: Excessive Setup Anti-Pattern
date: 2006-12-03T22:10:31+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=486
permalink: /2006/12/03/excessive-setup-anti-pattern/
categories:
  - jsf
  - software development
  - test driven development
---
James Carr has come up with a basic list of [TDD anti-patterns](http://blog.james-carr.org/?p=44) and while I&#8217;ve seen many of them, one currently still plagues many of our tests:

> **Excessive Setup**
  
> A test that requires a lot of work setting up in order to even begin testing. Sometimes several hundred lines of code is used to setup the environment for one test, with several objects involved, which can make it difficult to really ascertain what is tested due to the &ldquo;noise&rdquo; of all of the setup going on. 

The core issue comes down to having to use JSF for the GUI layer and dealing with its&#8217; many mock objects using [Shale&#8217;s mocking package for JSF](http://edgibbs.com/2005/11/30/unit-testing-jsf-with-shale-mock/). Thus many tests cannot simply test a single method without making sure FacesContext and many other stubs are setup. This tends to make the tests harder and more tedious to write especially for developers who haven&#8217;t quite caught the whole TDD bug anyway. The setup might not be hundreds of lines, but it is far more than you&#8217;d want for simple unit testing.

We&#8217;re still looking at ways to improve this from refactoring out even more code out of JSF backing beans to bringing in some TDD heavyweights to mentor the team through the best way to deal with it.