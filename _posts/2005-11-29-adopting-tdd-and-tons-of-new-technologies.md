---
id: 202
title: Adopting TDD and Tons of New Technologies
date: 2005-11-29T21:42:46+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=202
permalink: /2005/11/29/adopting-tdd-and-tons-of-new-technologies/
categories:
  - software development
  - test driven development
---
It would appear based on my limited experience that presented with lots of new tools, technologies and frameworks to learn versus a new development practice like TDD the new technology wins hands-down. I think I knew instinctively that pushing new technologies and TDD at the same time would be hard, but our marching orders are to implement all new projects on the new enterprise software, the IBM Websphere stack in this case.

Developers are used to being asked to learn new technologies. Almost every project adds at least one new thing to learn even if it&#8217;s just a new way to do logging. Technology tends to march on. So picking up a new technology is a learned habit for software developers.

TDD reverses the usual development style where the developer does a little design, codes a solution, checks and unit tests it by hand, and then moves on to the next feature. Asking them to start writing tests firsts even after running them through some training still feels odd. Then you add in the stress of learning multiple new frameworks. On this project the developers are learning:

  * JSF
  * Portlet Development
  * Legacy connectors
  * RAD 6.0 IDE
  * iBATIS/Hibernate
  * Spring
  * Maven

In some cases they have some exposure to a few of these, basically Spring and iBATIS/Hibernate, but mostly it&#8217;s all been new. 

So what I&#8217;ve observed is as the stress mounts developers fall back to learning just enough to get the new tools working to solve the current problem. Writing tests in a framework you only partially understand is hard, and then these aren&#8217;t exactly unit testing friendly things like JSF or Portlets.

Tomorrow I&#8217;ve freed up some time to pair up and write some tests.