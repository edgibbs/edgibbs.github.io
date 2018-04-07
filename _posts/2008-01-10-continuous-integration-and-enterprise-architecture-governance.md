---
id: 647
title: Continuous Integration and Enterprise Architecture Governance
date: 2008-01-10T20:48:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/01/10/continuous-integration-and-enterprise-architecture-governance/
permalink: /2008/01/10/continuous-integration-and-enterprise-architecture-governance/
categories:
  - automated builds
  - enterprise architecture
  - software development
---
Continuous Integration can be a great place to do governance. With good reason developers get the shakes when someone mentions we need more governance. Past history has taught them governance often means someone above them says no.

Continuous integration allows you to inject good development practices and ensure some governance without having to always be the bad cop. Let the build box be the bad cop.

If you&#8217;re a Java or .NET shop you can add all sorts of checkpoints to the build and tell at a glance where projects are at and dig into the details. The sorts of things you can do include:

  * Requiring every active project have a build script and be setup on the build box.
  * The code must checkout completely and compile successfully.
  * There must be tests and all tests must pass.
  * Unit test coverage must meet a target number or the build fails. (We use 70% currently)
  * Coding conventions must be followed or the build fails if you have more than say 20 violations. We use [Checkstyle](http://checkstyle.sourceforge.net/) to enforce this.
  * The code passes the [CRAP](http://www.crap4j.org/) metric.
  * The code passes other static analysis checks like [Findbugs](http://findbugs.sourceforge.net/) or [PMD](http://pmd.sourceforge.net/).
  * Package dependency analysis using thing like [JDepend](http://clarkware.com/software/JDepend.html).
  * Security static analyzers to prove code meets security standards. (I haven&#8217;t tried any of these yet.)

All of these steps help you promote good practices, ensure transparency, and give you governance over day to day coding instead of just a review or two at the beginning and end of a project.