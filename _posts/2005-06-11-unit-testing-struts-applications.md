---
id: 8
title: Unit Testing Struts Applications
date: 2005-06-11T21:32:39+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=8
permalink: /2005/06/11/unit-testing-struts-applications/
categories:
  - software development
---
As one trying to implement TDD or at least rigorous unit testing in a real world web development shop I am constantly confronted with the issue of how to unit test our Struts applications.

I&#8217;ve built a fair number of Struts applications myself over the past few years. I started down the Struts MVC path because I don&#8217;t like reinventing my own frameworks and it was 2002, the first Struts books were appearing and it was already becoming the default way to write new Java applications. It certainly felt a whole lot better than banging out a JSP front end hooked to servlets that did raw JDBC to the database.

I remember diving through the [Programming Jakarta Struts<img src="http://edgibbs.com/wordpress/wp-content/programming_jakarta_struts_book.gif" border="0" height="190" width="145" alt="programming_jakarta_struts_book.gif" align="right" vspace="2" hspace="2" />](http://www.oreilly.com/catalog/0596006519/) book from O&#8217;Reilly, trying to understand the theoretical underpinnings and just best how to implement the framework. I remember reading in the books relatively simple examples how one should create their own model layer and that Struts didn&#8217;t really provide one. My compatriots at the professional services firm I worked for at the time nicknamed me &#8216;The Professor&#8217; for my academic need to understand the theory behind these frameworks. I thought the basic idea was wonderful, but when the rubber met the road as usual we ran into issues. Eventually the design evolved into your now traditional Struts app with Actions, FormBeans, Value Objects like Person, and Services which were really thin DAOs. It met the requirements for the client which is the final evaluation for any project so despite a lack of any real unit tests beyond the Service layer that were dependent on the database it really didn&#8217;t have much in the way of unit tests.

So your options when you start to really examine them are something like:

  * StrutsTestCase
  * HttpUnit or derivatives like JWebUnit
  * Cactus
  * Give up and just test the business logic

I&#8217;ve gone through all of these and they lead me to a similar conclusion.

**StrutsTestCase** is a pretty reasonable mock framework for testing Struts applications and faking the Response, Request, ActionMapping, and ActionForm objects for every execute method. That said I&#8217;ve had a lot of issues just getting it setup in many cases, but that may be from unfamiliarity. Anyway it does a fairly decent job of letting you setup and test Struts actions where many times the business logic is embedded.

**HttpUnit** or more friendly derivatives like **JWebUnit** allow you to test the ever so hard to test JSPs that are generally put together with Tiles in a Struts project meaning they&#8217;re hard to test any other way. While this can be very valuable testing it really isn&#8217;t unit testing, it&#8217;s functional testing or acceptance testing and it&#8217;s dependent on the container being up and running to do the tests. On top of that the feedback loop is longer because HTTP even to and from a localhost instance just takes some time. In the end they can be very valuable tests, but they&#8217;re really something you want your automated build tool like CruiseControl to run with every build, not something you&#8217;re going to run a lot in the midst of coding.

**Cactus** allows you to run the tests inside the container by literally firing it up. I&#8217;ve had a few experiences getting Cactus actually running in the container and my general rule has been its not worth the effort. You can of course run StrutsTestCase this way as well, but I much prefer the MockStrutsTestCase approach since with unit testing I&#8217;m trying to take out my dependencies and test small sections of code, typically individual methods. Again it&#8217;s just not that satisfying to use Cactus to setup tests and the feedback cycle is quite a bit slower.

Then you can always **give up** and just unit test the business logic. It sounds good, but then it generally turns out a lot of the business logic is in the Actions and really the only other logic is in the DAOs. So you can unit test the DAOs, but then your dependent on the database again even if your using something like DbUnit for setting up and tearing down records for the tests.

OK, so there&#8217;s solutions for all of these you&#8217;re saying if you&#8217;re a relatively sophisticated java developer. I think that&#8217;s right. Really there should be almost no business logic in your actions at all, that should all be handled by a service or business delegate. These are just POJOs so you&#8217;re able to use JUnit to your hearts content to do real unit tests. You can pull out the database dependencies by implementing Factories to produce the DAO objects and then passing back a mock DAO implementation for testing maybe based on some system property. Then you can use StrutsTestCase to check that a ActionForm&#8217;s validate method works or an Actions execute method works. Then to complete things you write some JWebUnit tests for end to end front end tests and a suite of tests using the real DAOs so you can make sure you get the right stuff out of the database. The last two you only run with the automated build since they take longer. The other tests are true unit tests without significant dependencies so you should be able to run the whole suite in a few seconds for most projects.

Great, until the real world shows up. The truth is the vast majority of Struts apps I&#8217;ve seen write most of the business logic into the Actions. Many of the books out there pretty much show this as the way to do things from their examples, even though they mention the more sophisticated approach. To make things worse the DAOs are almost always instantiated and used in the Action&#8217;s execute method. Then top this off with the fact that a significant number of Struts projects then leave a lot of java code even in the JSPs instead of relying on JSTL or the struts tag libraries.

In my particular situation I&#8217;m mentoring up a fairly large group of developers who come from a ColdFusion, Delphi, or mainframe background so once they learn the basic Struts MVC paradigm they&#8217;re off and running. I&#8217;m still working on ways to instill unit testing, but I&#8217;m stretched thin and in an Agile world where you can&#8217;t do everything and the applications aren&#8217;t that large instilling the value of unit testing isn&#8217;t that easy especially if it involves designing their applications to be testable instead of relying on deploying the app into something like Tomcat and then manually checking the pages every few minutes. And when they go out to Google to figure something out the examples rarely mention why putting all the business logic in the Actions is probably a bad thing. After a first round of first time Struts projects I have some ideas of how I&#8217;m going to try to instill TDD even in the Struts world.

It&#8217;s a pretty simple formula:

  * Run training sessions on basic JUnit functionality and how to write a test before code and the benefits.
  * Trying to assign my relatively few experienced J2EE developers to each new project
  * Running more specific training sessions on JWebUnit, StrutsTestCase, and how to use factories and a POJO service layer to separate the Actions from the DAOs.
  * Move all of our projects into running CruiseControl with a target that invokes JCoverage or Clover and fails if we don&#8217;t achieve at least 50% test coverage of the codebase. I&#8217;m pretty sure I&#8217;ll have to adjust things here, since some code like JavaBeans are hardly worth testing.
  * Evaluate and adjust

I&#8217;m just hoping that 6 months from now that we&#8217;re starting to roll out our first TDD projects, have to see how it goes.