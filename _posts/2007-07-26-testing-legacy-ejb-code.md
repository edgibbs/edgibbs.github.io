---
id: 605
title: Testing Legacy EJB Code
date: 2007-07-26T22:17:29+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/26/testing-legacy-ejb-code/
permalink: /2007/07/26/testing-legacy-ejb-code/
categories:
  - software development
  - test driven development
---
I&#8217;ve battled the EJB beast and come back scarred and wounded. I&#8217;ve tried many approaches and found none to satisfying.

First, there was hope with MockEJB, I got it working for some simple cases, but I got bogged down with more complicated test setups and dealing with intercepting EntityBean test methods.

Next came the idea of just using EasyMock. That worked well for testing the service layer that depends on some stateless session bean facades. You can mock the session beans pretty effectively by adding a simple setter and injecting the mock. Unfortunately the stateless session beans had lots of JNDI calls within methods to get entity beans. Without wholesale refactoring it just wasn&#8217;t going to work.

Then, touched on JB Rainsberger&#8217;s idea of pulling out as much logic as possible out of the session beans and just delegating to that class for everything. Unfortunately the session beans already need some refactoring because they&#8217;re too big. They implement a Transaction Script style. They make a JNDI call to get a home interface to an entity bean. Then they invoke a method or two on the entity bean. They catch exceptions, rollback transactions, and throw a new wrapped exception. There&#8217;s not a lot of real logic anyway except maybe for a bit of exception handling. I can look up the enitity bean home interface and pass it off to the pure POJO class, but I&#8217;m still stuck with try catch block. It just isn&#8217;t very satifying.

There were a few other attempts, that came to nothing as well.

Large legacy EJBs suck for testing.