---
id: 194
title: JTest and TDD
date: 2005-11-20T14:21:42+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=194
permalink: /2005/11/20/jtest-and-tdd/
categories:
  - software development
  - test driven development
---
I have a developer who got interested in trying out [JTest](http://www.parasoft.com/jsp/products/home.jsp?product=Jtest) from Parasoft. He talked to a sales rep at a conference and got a 30 day copy or something to try out. It&#8217;s a fairly pricey product on its own around 5K per seat if I remember correctly. I&#8217;ll be getting a sales quote soon so we&#8217;ll see if my memory is right on that one.

It appears to capable of generating a pretty good set of unit tests, but the biggest concern is that it sort of inverts the idea behind test driven development where of course you have to write the tests first. For legacy code this is probably a pretty great tool. You checkout the codebase, run JTest against it and suddenly have a fairly decent set of tests that you can build on. Jeffrey Fredrick, a developer at [Agitar](http://www.agitar.com/) a competing product to JTest, claims that it can be used [after you&#8217;ve done TDD](http://www.developertesting.com/archives/month200405/20040514-XPerimentFindings.html) to increase your code coverage.

Since we&#8217;re in many ways still in the initial stages of implementing TDD with my developers I worry that adding a tool that works after you write the code will reinforce the wrong ideas. It also adds yet another tool to our current slate of new technologies that everyone has to come up to speed on. If all of the developers had fully integrated TDD into their daily process then adding a tool to increase coverage might be a lot more reasonable.

On the other hand, we&#8217;re still dipping our toes in the water with TDD and I&#8217;d be happy to see any significant improvement in unit test coverage even if a good portion of it was from an automated tool. And some developers are more likely to adopt something if they have a cool new tool to go along with it. 

Not sure how we&#8217;ll proceed with this at this point. We may buy a license or two and try it out on one project, or we may just pass for now because even that cost is a little too high. I&#8217;m not sure why companies don&#8217;t realize that $1000 and up is generally the point where you decide not to adopt the tool just on cost. We actually have a tool that costs about $20,000 per seat and we&#8217;re in the process of migrating the last dependent code on the tool out so we can drop it completely.