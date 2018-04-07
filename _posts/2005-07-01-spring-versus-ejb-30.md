---
id: 24
title: Spring versus EJB 3.0
date: 2005-07-01T22:37:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=24
permalink: /2005/07/01/spring-versus-ejb-30/
categories:
  - software development
---
In an [article](http://www.onjava.com/pub/a/onjava/2005/06/29/spring-ejb3.html) on O&#8217;Reilly&#8217;s On Java site, [Michael Juntao Yuan](http://www.enterprisej2me.com/blog/java/) compares Spring versus the EJB 3.0 spec. His essential argument is that EJB 3.0 &#8220;learned the lessons from Spring and Hibernate so well that, in most cases, EJB 3.0 addresses what most developers need with a standard API.&#8221;

We also learn in the scope of the article that Spring &#8220;is a popular but non-standard open source framework.&#8221; I&#8217;m really not sure what an how an open source framework is non-standard. This applies as well to ant, JUnit, log4J, and a host of other commonly used open source java tools. If it means it doesn&#8217;t have an official JCP blessed spec, then I suppose it is technically non-standard. And with open source frameworks popularity means its instantly more useful because of a large community of users and contributors.

Since even with the EJB 3.0 spec parts of it can be difficult to test outside of the container we learn that &#8220;in-container tests are recommended, as they are easier, more robust, and more accurate than the mock objects approach.&#8221; The reality is in-container tests are possibly OK for functional tests that CruiseControl runs, but they blow for unit tests as the overhead is simply far to high leading them to be commented out, etc. I&#8217;ve seen my developers fail to run unit tests over and over again because of dependencies on things like rules engine environment, JBoss servers, and databases. They simply take too long so they don&#8217;t get run.

I&#8217;m cherry picking things from the article here, but I don&#8217;t think it&#8217;s fair to come after Spring when the EJB 3.0 spec still isn&#8217;t finalized and won&#8217;t have much vendor support for a few years. And of course the author works for JBoss. And since I haven&#8217;t had to build anything that required EJB so far I find that Spring is likely to be a lot more useful to me in my everyday work. At the end of the day I need more easily testable POJOs, not another promise of better EJBs.