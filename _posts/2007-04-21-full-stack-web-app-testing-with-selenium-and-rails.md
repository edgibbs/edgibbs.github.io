---
id: 554
title: Full Stack Web App Testing with Selenium and Rails
date: 2007-04-21T21:03:58+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/04/21/full-stack-web-app-testing-with-selenium-and-rails/
permalink: /2007/04/21/full-stack-web-app-testing-with-selenium-and-rails/
categories:
  - conferences
  - ruby
  - software development
  - test driven development
---
[Alex Chafee](http://purpletech.com/content/) and Brian Takita of [Pivotal Labs](http://www.pivotallabs.com/) mix regular rails tests including fixtures with Selenium tests for a full stack test in one. They kicked off the [2nd Annual Silicon Valley Ruby Conference](http://www.sdforum.org/SDForum/Templates/CalendarEvent.aspx?CID=2135&mo=4&yr=2007) in style with a focus on testing. Few thought it odd to be talking about testing early in the morning. Rails of course bakes testing in and you almost have to work to avoid it. Selenium isn&#8217;t drop dead obvious though especially since you can so easily test a lot of the web tier through functional and integration tests in rails controllers. When Alex Chafee asked for a show of hands a good number of the 100 or so attendees had used it, but very few were using it at work.

The approach is pretty simple:

  * You need to test your view layer partially because of all the AJAX going on their and partially because it doesn&#8217;t really work unless it works in an end users version of IE.
  * Since you have access to rails and you can write the Selenium tests in Ruby, just go ahead and mix the two.
  * You can use fixtures for Selenium tests.
  * You can almost produce a DSL with the Selium tests for the customer.
  * Since many of the tests will take a while you should hook them up to your continuous build boxes. (They run Mac minis with Parallels and Windows and Linux installed so they can test three platforms at once.)

They had some lessons learned to pass on:

  * It helps to check the page title on every page to ensure you&#8217;re actually navigating somewhere.
  * To handle AJAX you probably need to resort to polling. They use a default timeout of 20 seconds.
  * Remember to refactor out common code to create sort of a DSL.
  * Tests are more legible if you use literal strings for many of the parameters.
  * Long test methods are good in Selenium because you want to touch large swaths of the code.
  * Rarely use Selenium IDE for doing any recording.
  * You probably need to disable transactional fixtures for Selenium tests.

And finally they should have some rake integration code around this available soon as open source.