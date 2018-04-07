---
id: 348
title: '98% Test Coverage'
date: 2006-05-12T20:20:27+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=348
permalink: /2006/05/12/98-test-coverage/
categories:
  - software development
  - test driven development
---
Some days the plans come together. I&#8217;ve been pushing hard to implement TDD, code reviews, and continuous integration for at least a year now. Today I helped one of my developers setup Clover to exclude the one package of generated code that didn&#8217;t have or need many tests. This is a pretty small code base, that just performs about 30 business rules and returns the results via a web service. A quick run of the tests and:

**Total: 98.2%**

The remaining 2% were a few exceptions that weren&#8217;t thrown and captured in the tests. The caveat is because of time pressure and figuring out how Websphere handles web services the developer wrote the tests after sending off the code to QA. Still it&#8217;s definitely a great sign of progress.