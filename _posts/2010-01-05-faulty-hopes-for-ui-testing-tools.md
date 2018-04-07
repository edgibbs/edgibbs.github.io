---
id: 790
title: Faulty Hopes for UI Testing Tools
date: 2010-01-05T22:54:59+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=790
permalink: /2010/01/05/faulty-hopes-for-ui-testing-tools/
categories:
  - acceptence testing
  - software development
  - test driven development
---
Michael Feathers wrote a tough post recently on UI testing tools.

> The fact of the matter is that UI based testing should be used for UIs: that&rsquo;s it. You should not be testing your full application end-to-end through a UI Testing tool. First of all, that sort of testing couples some of the most important tests in your system to one of the most volatile parts of it.
> 
> &#8212;[Michael Feathers](http://blog.objectmentor.com/articles/2010/01/04/ui-test-automation-tools-are-snake-oil) 

I understand the frustration he speaks from, but I&#8217;ve always realized that you don&#8217;t really want to completely try to test through the front-end of the application. It can be useful with legacy systems to get a minimal test harness in place. With the right testers I&#8217;ve even seen some of the Mercury products used effectively for UI testing, though it probably required a 3-1 ratio of QA to developers and the tests were not customer tests, but written more as a regression suite.

My use of functional testing tools like Selenium has generally been for a spattering of end to end tests and some amount of customer tests. I&#8217;ve never really tried to achieve a high level of coverage with these tests. Obviously testing the business logic through something like Fitnesse is more effective or even setting up BDD style tests tend to make better customer tests.

I&#8217;ve actually been saddened over the past five years or so to see that tools like Fitnesse haven&#8217;t seen more adoption. I think the BDD development has put more of a focus on developing customer style tests, but in general if there are automated end-to-end test suites in place there often overly reliant on something like Selenium.