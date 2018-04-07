---
id: 54
title: Enterprise Rules Engine versus Drools
date: 2005-08-01T21:24:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=54
permalink: /2005/08/01/enterprise-rules-engine-versus-drools/
categories:
  - software development
---
Before I came onboard at my present company I was fairly impressed with their use of a rules engine. It seemed better than most places that on a major application they had tied all of their business logic into the rules tier, theoretically for reuse.

Of course you don&#8217;t necessarily see reality in an interview. The realities included: 

  * The rules engine was brought in house to solve the problems with a wonderful &#8216;Big Bang&#8217; project.
  * The rulebase had a few thousand rules organized into rulesets, and then we implemented workflow, or &#8216;rule flow&#8217; in the rules engine.
  * The software was so expensive we only had a few licenses for developers, and only two developers worked with the rules engine product at all.
  * Debugging the rules engine is difficult, and unit testing it is a nightmare.
  * And finally the business analysts were supposed to write the business rules in the tool. I&#8217;ve never seen this work where the programing interface is easy enough to use for the business side. Lots of tools promise it, I don&#8217;t know of what that delivers it.

One of my developers is looking into [Drools](http://drools.org/), after a brief look it appears to be a much better match for our requirements.

Another example of a simple rule I try to follow, &#8216;Always avoid Enterprise Software where possible.&#8217;