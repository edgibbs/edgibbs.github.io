---
id: 113
title: Unit Tests Before New Technology Adoption
date: 2005-09-24T23:48:01+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=113
permalink: /2005/09/24/unit-tests-before-new-technology-adoption/
categories:
  - software development
---
One of the most frustrating things with legacy applications is the difficulty of harnessing them into test frameworks. Often they&#8217;re tightly coupled and it&#8217;s difficult to deal with. Usually if you&#8217;re just going in for a single bug fix it isn&#8217;t worth the effort of trying to put a unit test in.

From now on one of the items on my own mental checklist will be how to we test this new technology we&#8217;re adopting. If writing unit tests in applications using it are hard, difficult, or nigh well impossible, then there&#8217;s really no point in adopting it. If it&#8217;s really that great it should be testable. In other words things like Hibernate, Spring, and Drools are easy to test. Struts is a bit more painful because of inheritance and the web layer, but at least StrutsTestCase exists to ease the pain. Anything harder to test than that, EJBs for instance, don&#8217;t merit consideration.