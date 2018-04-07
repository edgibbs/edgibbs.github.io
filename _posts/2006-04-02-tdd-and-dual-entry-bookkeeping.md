---
id: 313
title: TDD and Dual Entry Bookkeeping
date: 2006-04-02T20:52:42+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=313
permalink: /2006/04/02/tdd-and-dual-entry-bookkeeping/
categories:
  - software development
  - test driven development
---
In a talk at SD West 2006 Bob Martin mentioned about the similarity between [dual entry bookkeeping](http://butunclebob.com/ArticleS.UncleBob.TheSensitivityProblem) for accountants and test driven development for developers. Just like dual entry bookkeeping your production code checks the unit tests and the unit tests check the production code. At the end of the day everything should sum up to a simple green bar.

As for having to drop unit tests because you&#8217;re in a hurry:

> One common issue I have found is that developers drop the discipline of TDD in the face of schedule pressure. &#8220;We don&#8217;t have time to write tests&#8221; I hear them say. Before I comment on the absurdity of this attitude, let me draw the parallel. Can you imagine an accounting department dropping dual entry bookkeeping because they&#8217;ve got to close the books on time? Even before SARBOX such a decision would be such a huge violation of professional ethics as to be unconscionable. No accountant who respected his profession, or himself, would drop the controls in order to make a date.
> 
> &#8212; Bob Martin