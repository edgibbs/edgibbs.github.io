---
id: 738
title: First Impressions on Cucumber
date: 2009-05-02T20:47:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=738
permalink: /2009/05/02/first-impressions-on-cucumber/
categories:
  - ruby
  - software development
  - test driven development
---
Recently I&#8217;ve been catching up with the Ruby world again in my limited spare time. I had an idea for a fun little hobby project, but I wanted to actually do it BDD style and in Rails 2. I dug a bit into RSpec again and realized they had a new BDD tool called [Cucumber](http://cukes.info/). Seeing there was a beta book out from the prags I paid and downloaded the PDF copy of &#8216;[The RSpec Book: Behavior Driven Development with RSpec, Cucumber, and Friends](http://www.pragprog.com/titles/achbd/the-rspec-book)&#8216;.

Cucumber takes plain text scenarios and runs defined steps to verify the scenarios are working. The idea is Cucumber describes the higher level behavior with more of an outside that application focus and RSpec is used to test the behavior of the individual components. There seems to be some overlap, but it modifies the traditional Red-Green-Refactor into:

  1. **Cucumber**: Focus on one scenario.
  2. **Cucumber**: Write failing step definition.
  3. **RSpec**: Write a failing spec.
  4. **RSpec**: Get the spec to pass.
  5. **RSpec**: Refactor.
  6. **Cucumber**: Refactor.

I worked through the tutorial that involves the classic 70s game MasterMind. (I suspect Dave Astels at work there.) I like the textual description similar to FIT/Fitnesse without so many tables. The feature descriptions are in plain English with a few grammatically important keywords:

<div>
  <img src="http://edgibbs.com/images/cucumber_features.jpg" />
</div>

Next you take the Given, When, Then, And syntax and build out the steps one at a time diving back and forth into RSpec when you get down to the lower level details.

<div>
  <img src="http://edgibbs.com/images/cucumber_steps.jpg" />
</div>

I find the regular expressions a bit jarring, but just like FIT/Fitnesse this is the code that the business users never see. If your lucky you&#8217;re testers can read the code and even key off for ideas to use for exploratory testing ideas. The only other item is I always feel more comfortable just dropping back to an xUnit type testing tool and using good practices to give the tests meaningful names and organize scenario testing appropriately. In some ways you could use just RSpec as well for this purpose. Still I&#8217;m forcing myself to use it for a while as any new practice takes some getting used to. Next up is integrating it with Rails.