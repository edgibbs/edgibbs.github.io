---
id: 203
title: Unit Testing JSF With shale-test.jar
date: 2005-11-30T23:51:31+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=203
permalink: /2005/11/30/unit-testing-jsf-with-shale-mock/
categories:
  - jsf
  - software development
  - test driven development
---
JSF is not at all easy to test, and really wasn&#8217;t designed to be, but so far the [mock objects](http://struts.apache.org/struts-shale/features-test-framework.html) library included with Shale appears to be working for us. I paired with one of my developers for 3 hours to get 3 unit tests written that needed a FacesContext to allow for unit testing. For something you&#8217;re still pulling down with nightly builds, it appears solid enough for now. The extra examples in the source code helped work out some of the details for us.