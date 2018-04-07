---
id: 39
title: Unit Testing Adoption Curve
date: 2005-07-17T21:12:26+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=39
permalink: /2005/07/17/unit-testing-adoption-curve/
categories:
  - software development
---
Given the amount written about unit testing in general one would think that many organizations had adopted it by now. If XP has done nothing else it had apparently been able to make testing cool with developers. That alone is quite an accomplishment. Some of the signs of its&#8217; widespread popularity include:

  * After only a few years there are xUnit frameworks for almost every language from .NET to PHP
  * There are many popular open source testing tools beyond xUnit including: 

  * CruiseControl, AntHill
  * HttpUnit, JWebUnit
  * Mock testing frameworks EasyMock, JMock
  * StrutsTestCase
  * Replacements for JUnit like TestNG
  * DbUnit
  * And many others &#8230;

  * Support for running JUnit is built into every major Java IDE.
  * A whole host of books have been written specifically on unit testing.
  * A greater number of books and articles touch on unit testing such as all the XP books.
  * Many of the Agile methodologies assume unit testing and automated builds as basic supporting practices.
After reviewing a number of resumes, conducting quite a few phone interviews, and a few in person interviews for an opening for a senior J2EE developer I&#8217;m starting to seriously reconsider my assumptions. The reality is almost all the resumes I see mention experience with at least JUnit in the list of skills and experience. Then you start asking questions of candidates.

As it turns out over the last 3 months of conducting interviews it&#8217;s turned out in every case that the candidates had little real experience writing unit tests. Most of them had apparently used JUnit at least once, but generally didn&#8217;t use it on their projects and often the only unit tests they had ever written were written against DAOs which invoked a live database.

Often they&#8217;d explain that they used JUnit and unit testing for a project or two, but early on the developers had stopped writing the tests and they were rarely if ever run after being initially written. One explained that they did write a fair amount of unit tests, but they never used JUnit and had instead written their tests into main methods in all their classes that could then be executed individually. In the past three months this is the best I&#8217;ve seen as far as good practices go.

I realize that my current experience is a tiny sampling of the IT world out there, but it leads me to believe that a majority of the J2EE development world really hasn&#8217;t instituted any significant unit testing practices into their development methodology.

I can see evidence of this even within my own organization. My senior developers run CruiseControl, write a significant number of unit tests, and are constantly researching new testing techniques like Fitnesse or JWebUnit. When I came onboard over a year ago now I was impressed with their level of sophistication in these practices. As things have evolved I&#8217;ve of course seen much of the reality.

  * We have over 700+ unit tests for our major enterprise application, but it is far to few to truly test the system.
  * The majority of the tests are actually functional tests that invoke a lot of database transactions and rules from a commercial rules engine.
  * The full test suite runs for over 25 minutes so it&#8217;s only run by CruiseControl.
  * The majority of the time our build is broken and some unit tests are failing, but fixing current defects from QA almost always outweigh getting the unit tests passing.
  * Developers admit that despite believing in unit testing, if they feel any sense of time crunch they opt to stop writing tests first.

So I hope my experience has just been a statistical anomaly, but I fear it&#8217;s pretty close to reality. I do know that I personally feel like I&#8217;m diving off the deep end into an empty pool if I&#8217;m not writing tests. I don&#8217;t plan to go back to the days of just hoping everything worked with no tests in place. And I do love green bars and quick feedback. Now I just need to harness some of that passion to bring our development organization along. (And I need to remember not to be so dogmatic, that&#8217;s always dangerous)