---
id: 580
title: Rich Domain Model Stuck in Legacy System
date: 2007-07-04T13:39:45+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/04/rich-domain-model-stuck-in-legacy-system/
permalink: /2007/07/04/rich-domain-model-stuck-in-legacy-system/
categories:
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/domain_driven.png" />
</div>

Brows furrow, fists clench, throats tighten. Our domain logic is lost in legacy systems. I look back at any significant project that interfaces with our mainframe and see lost opportunities. We could have real domain objects interacting with relevant behaviors, but instead we dutifully write dozens of data objects full of getter/setters and little else. We pass off all the business logic and processing to the mainframe. 

Even **time** is a concept we&#8217;re asked to check with on the mainframe. Since there&#8217;s some strange issues in some of the legacy code and the entire design paradigm was to run everything in a batch mode we can&#8217;t even rely on time. Real world time is useless. Setting your time by Network Time Protocol (NTP) is dangerous. Time is just a setting to control when your jobs run.

[Mike Witters](http://mikewitters.com/?p=29) has seen the anemic domain model as well:

> There was almost no logic involved outside of validating UI input. Almost everything from a logic perspective was encapsulated into the legacy systems or database queries: pricing, searches, margin calculations, etc.

We&#8217;re still working on it, but if most of your domains are left to your legacy systems you really don&#8217;t see the benefits of OO. The promise of a healthy domain driven design remains. Future web mainframe integration projects discussions will center around these ideas.