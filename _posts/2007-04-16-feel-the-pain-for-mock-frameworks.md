---
id: 552
title: Feel the Pain for Mock Frameworks
date: 2007-04-16T21:10:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/04/16/feel-the-pain-for-mock-frameworks/
permalink: /2007/04/16/feel-the-pain-for-mock-frameworks/
categories:
  - jsf
  - software development
  - test driven development
---
Mock frameworks can generate an &#8216;aha&#8217; moment if you introduce them at the right moment. The evolution looks like this:

  1. Introduce unit testing as a concept.
  2. Walk through the basics of an xUnit framework.
  3. Introduce test driven development.
  4. Introduce fake objects or hand rolled stubs to substitute for things like DAOs.
  5. Use specialized mock object libraries like [Shale mock JSF framework](http://shale.apache.org/shale-test/index.html) to build fake FacesContexts.
  6. Spring EasyMock or JMock on them to handle some nasty edge cases.

We choose [EasyMock](http://www.easymock.org/). Introducing it right up front would have been cognitive overload. Getting TDD installed is really more a journey than a simple prescriptive plan. TDD is about changing a core developer behavior in how they write code. So I saved the mock framework explanation for that moment where it elegantly solved the problem at hand.