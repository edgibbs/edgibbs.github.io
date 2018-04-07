---
id: 36
title: Unit Testing Web Apps
date: 2005-04-21T20:13:08+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=36
permalink: /2005/04/21/unit-testing-web-apps/
categories:
  - software development
---
I&#8217;ve spent the last couple days in between meetings and fighting fires trying to review two Struts projects my teams are working on. I keep trying to add tests only to find that it&#8217;s much harder to add any sort of meaningful test than it should be. These are not big applications and they&#8217;re being done by developers on learning curves who aren&#8217;t too OO familiar so the bulk of the code and logic is in JSPs or Struts Actions. Unfortunately that means they&#8217;re immediatly hard to test. So far these are the things I keep running into:

  * The easiest tests are functional end-to-end tests using something like JWebUnit, but brittle and they take too long to run to do more than a few.
  * StutsTestCase just doesn&#8217;t provide to much besides firing off an action from the mapping file and seeing if it creates the expected results. Generally it just feels to trivial.
  * JSPs are just a pain to parse and have to be rendered anyway especially since tiles and the like are in use. And generally what does parsing a JSP really tell you. You end up in the GuruTestsCode pattern real fast.
  * You can write tests around the DAO layer, but generally you&#8217;re just testing against the live database, again too slow.
  * There are always some validation Utility classes, that at least are easily testable

I&#8217;m going to circle the wagons tomorrow and bang some ideas off my top developers, but I&#8217;m beginning to think without rethinking the design for testability that unit tests don&#8217;t work to well in this environment.