---
id: 561
title: Test Driven Development Applied
date: 2007-05-05T20:29:36+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/05/05/test-driven-development-applied/
permalink: /2007/05/05/test-driven-development-applied/
categories:
  - acceptence testing
  - software development
  - test driven development
---
[Lasse](http://radio.javaranch.com/lasse/) is writing a Manning book on [practical TDD and acceptance testing for java developers](http://radio.javaranch.com/lasse/2007/04/27/1177660989075.html). 

<div align="center">
  <img src="http://edgibbs.com/images/test_driven_cover.jpg" border="0" />
</div>

I&#8217;m so excited I purchased the early access addition, signed up for the author forums, and started skimming the PDF of the first four chapters tonight. This is exactly the text my team and so many other java development teams have needed. Up until now I had a big todo on my Someday/Maybe list entitled:

  * Write a developer notebook style on unit testing java web apps (especially TDD with JSF)

Now I&#8217;ll actually see the concept in print. 

### Other Texts

As an early adopter it&#8217;s fairly easy to get caught up in TDD and forget how painful it can be to implement or understand for developers in the early majority. In the past I&#8217;ve looked at several texts to help transition my team:

[Test Driven Development](http://www.amazon.com/Test-Driven-Development-Addison-Wesley-Signature/dp/0321146530) &#8211; Beck is great getting across the concept, but when you have to move past implementing a Money class and deal with things like Struts, JSF, or iBATIS and Hibernate the gulf can be hard to cross.

[Pragmatic Unit Testing](http://www.pragmaticprogrammer.com/starter_kit/utj/index.html) &#8211; A good overview text including the idea of fakes and mocking. Jumping to effectively testing a J2EE app is still a wide ravine.

[JUnit in Action](http://www.manning.com/massol/) &#8211; Again another good introduction, but some of the solutions to deal with J2EE troubles is to utilize Cactus to do in-container testing. Your testing times really start stacking up.

[JUnit Cookbook](http://www.manning.com/rainsberger/) &#8211; A great sample of recipes that finally addresses some of the nastier cases like how you test JSP output. After looking all the ways to deal with testing JSPs I just felt dirty. And because it&#8217;s from 2004 it largely ignored the difficult to test world of JSF.

[Agile Software Development, Principles, Patterns, and Practices](http://www.amazon.com/Software-Development-Principles-Patterns-Practices/dp/0135974445/sr=1-1/qid=1161361645/ref=sr_1_1/102-5628847-5032158?ie=UTF8&s=books) &#8211; I love some of the TDD examples in here and the bowling game is a now a classic. Still the gap exists in how to apply this in J2EE land.

### Acceptance Testing

[Lasse](http://radio.javaranch.com/lasse/2007/04/27/1177660989075.html) is tackling unit testing the J2EE stack along with acceptance TDD. Introducing [Fitnesse](http://fitnesse.org/) has been a big focus for the last year and we&#8217;re starting to really utilize it on projects. Still it suffers some in the documentation area and even the one book out focuses on [FIT](http://fit.c2.com/) and ignores many of the gotchas that come up on Fitnesse.

While I think TDD has started to move closer to the mainstream, acceptance testing is still fairly leading edge from what I can see. I think quite a few java developers have heard of FIT or Fitnesse, but very few have even tried it out. 

### Conclusions

This just really bandages up a nasty pain I&#8217;ve had for too long around TDD, acceptance testing and J2EE. Two years ago I would have ordered twenty copies, put together some labs, and setup a reading group. It may have cut months of our adoption curb. Since we were more on the leading edge I got to figure out a lot of this as we went along from using the Shale mocking library to driving adoption by making setup easier with ObjectMother patterns.

Just skimming the first four chapters, knowing the quality of Lasse&#8217;s postings over the years, and realizing there is still much to learn I expect great things of this book. I&#8217;m sure I&#8217;ll be ordering a dozen copies come September.

Many thanks to [Lasse](http://radio.javaranch.com/lasse/) for spending many future hours hammering out this tome.