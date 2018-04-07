---
id: 788
title: Developer Expectations
date: 2010-01-04T21:44:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=788
permalink: /2010/01/04/developer-expectations/
categories:
  - acceptence testing
  - automated builds
  - code reviews
  - management
  - software development
  - test driven development
---
I came across a note of mine from last year on my baseline expectations for developers: 

  * All code is checked into source control on an hourly basis or at most daily.
  * Every project has an automated build. (Maven, Ant)
  * All projects are setup in continuous integration (Hudson)
  * All code follows the current Java/Groovy coding standards.
  * Unit test coverage of new code must meet a 70% target. TDD is preferred.
  * Code reviews or regular pair programming are required.
  * Code should meet a standard of low cyclomatic complexity through refactoring and design.
  * Some level of functional, integration, and acceptance tests should be performed.
  * High value documentation is maintained.