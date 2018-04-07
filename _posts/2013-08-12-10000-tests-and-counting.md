---
id: 962
title: 10,000 Tests and Counting
date: 2013-08-12T07:44:59+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=962
permalink: /2013/08/12/10000-tests-and-counting/
categories:
  - acceptence testing
  - automated builds
  - software development
  - test driven development
---
<div align="center">
  <img src="/images/10000_tests.jpg" />
</div>

I played a &#8220;Yeah&#8221; sound effect in campfire a few weeks ago in celebration of checking in our 10,000th test. It was a milestone worth celebrating with both Creme Br&ucirc;l&eacute;e Bread Pudding and a chocolate chip cookie. Stepping back a few years I had to fight policy battles just to allot any development time to testing or even check it into CVS with the production code.

Some good things about 10,000 tests and counting:

  * We have pretty good confidence that we can catch breaking changes throughout the app. CI and a suite of much slower QA Acceptance tests add to that confidence.
  * We can run the entire suite of 10,000 RSpec examples in about 8 minutes on the newest Macbook Pros with 16GB of RAM and 4 cores plus hyper threading.
  * Finding old crufty areas of the codebase that aren&#8217;t&#8217; tested is a rare surprise rather than a common experience.
  * Even our large &#8220;god&#8221; classes are generally well tested.
  * We&#8217;re constantly thinking about ways to increase the speed of the overall run to at least keep it under the 10 minute threshold rule of thumb. This tends to lead to good refactoring efforts to decouple slow tests from their slow dependencies.

Some not so good things:

  * Many of the &#8216;unit&#8217; tests are really light integration tests since they depend on database objects, Rails ActiveRecord objects in our case.
  * Some of our &#8216;god&#8217; classes have 3000+ lines of tests and take 2-3 minutes to run on their own.
  * We have to rely on methods like parallel tests to distribute our unit test running.
  * If it doesn&#8217;t look like a change will impact anything outside the new code we sometimes skip running a full spec and let the CI server catch issues.
  * Running individual specs that use ActiveRecord often take 5-8 seconds to spin up, which is painfully long for a fast TDD cycle.
  * Our full acceptance test suite still isn&#8217;t consistent enough and running on CI so we have even more of a dependency of trusting the indirect integration testing in our unit test suite.
  * We&#8217;d like to use things like guard or auto test, but we haven&#8217;t been able to make them work with such a large number of tests.

Even with all the cons of a really large test suite, I love that we have it and run it all day long.

<div align="center">
  <img src="/images/bread_pudding.jpg" />
</div>