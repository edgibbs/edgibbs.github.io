---
id: 92
title: Unit Testing to Avoid Demo Bugs
date: 2005-08-31T23:07:00+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=92
permalink: /2005/08/31/unit-testing-to-avoid-demo-bugs/
categories:
  - software development
---
In a demo today another example of why we really need more unit testing instilled cropped up. One of our senior developers was giving a demo after the first Sprint on a project on an overhead projector. Someone piped up that he should try adding a document to multiple categories. So he agrees OK, selects two categories and then presto it just adds it to the first one. (He did do a good job of preparing running through the expected scenarios, but not including adding a document to more than one category.) Apparently this worked only a few hours before the demo, but after making a fix for a Hibernate issue this functionality broke. I pointed out that if there was a unit test for this, preferably written before the implementing code he would have known a lot more quickly about the bug. He essentially agreed, but he&#8217;s still not sold all that much on unit testing.