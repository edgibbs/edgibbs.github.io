---
id: 601
title: Finding A Test Seam
date: 2007-07-22T21:32:12+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/22/finding-a-test-seam/
permalink: /2007/07/22/finding-a-test-seam/
categories:
  - software development
  - test driven development
---
Testing legacy code is tough. It was never designed for tests. The app uses EJBs including old fashioned entity beans. After spending some time trying to get a few tests written against a stateless session bean using [MockEJB](http://www.mockejb.org/), I hit upon a new idea. Maybe I want to test at the Business Delegate layer and just mock the calls to the stateless session bean. 

With a little dash of [EasyMock](http://www.easymock.org/) and a bonus setter method to inject the stateless session bean I now can start opening up a seam for future tests. I&#8217;d still like to test the EJB layers, but now I have a **seam** in the application to work from. (Kudos to [Michael Feathers](http://michaelfeathers.typepad.com/) for naming the technique)