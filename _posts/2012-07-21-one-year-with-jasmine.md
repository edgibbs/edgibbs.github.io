---
id: 950
title: One Year with Jasmine
date: 2012-07-21T08:32:36+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=950
permalink: /2012/07/21/one-year-with-jasmine/
categories:
  - automated builds
  - javascript
  - ruby
  - software development
  - test driven development
---
<div align="center">
  <img src="http://edgibbs.com/images/jasmine_dessert.jpg" />
</div>

It&#8217;s been about one year since we introduced [Jasmine](https://github.com/pivotal/jasmine/) as our default for Javascript testing. Looking back it&#8217;s easy to declare it a success:

  * We test all our new javascript instead of just deciding it isn&#8217;t worth the effort.
  * Javascript is broken out into files instead of having the temptation of just leaving it inline in a view template.
  * Functions are broken down and refactored to be small and testable.
  * We&#8217;ve even been able to test some complex Closure javascript using Jasmine instead of JSUnit.
  * Running the full Jasmine suite is a part of every CI build.

If we&#8217;d only achieved a few of these things I&#8217;d consider it a big success. For a long time my default approach was to handle Javascript testing through functional Selenium based tests. While these are valuable tests, they certainly don&#8217;t help doing TDD with Javascript. Jasmine has finally allowed me to stay in a BDD/TDD workflow when switching between Ruby and Javascript.