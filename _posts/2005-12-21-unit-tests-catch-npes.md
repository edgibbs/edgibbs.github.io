---
id: 221
title: Unit Tests Catch NPEs
date: 2005-12-21T21:56:40+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=221
permalink: /2005/12/21/unit-tests-catch-npes/
categories:
  - software development
  - test driven development
---
A developer admitted today, after finally getting back to writing tests, that:

> I&#8217;m finding a lot of places where we should have checked for nulls in our code.

I may point the developer to the Introduce Null Object Pattern tomorrow since it may avoid having to check for nulls all over the code base. Eventually we&#8217;ll write the tests first, but this is progress.