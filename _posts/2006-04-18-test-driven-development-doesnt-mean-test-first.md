---
id: 327
title: 'Test Driven Development Doesn&#8217;t Mean Test First?'
date: 2006-04-18T21:07:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=327
permalink: /2006/04/18/test-driven-development-doesnt-mean-test-first/
categories:
  - software development
  - test driven development
---
In a [post to the errata](http://books.pragprog.com/titles/rails/errata) for [Agile Web Development With Rails](http://www.pragmaticprogrammer.com/title/rails/), the commenter notices that the the book barely touches on traditional TDD where you actually write the test first:

> #2327: The author enters several assertions before ever trying to run the test. As this section is on TDD, it might be better to get the test to pass at the assertion of the flash. Then add the next assertion. The reader would get a better feel of the flow of tdd (write a little bit of test, see it fail, write a bit of code to make it pass, see the test pass, refactor, repeat).

Dave&#8217;s follow up is enlightening:

> (Dave says: I believe this is a confusion between Test First Development and Test Driven Development. TDD doesn&#8217;t require tests to be written first)

So again the argument crops up around what Test Driven Development really is? My experience points to Kent Beck&#8217;s [explanation](http://www.threeriversinstitute.org/Test%20Driven%20Development%20Workshop.htm) that TDD is:

> Test-Driven Development (TDD) is the powerful combination of two techniques: test-first programming, in which the programmer writes automated tests in advance of implementation, and incremental design, in which the programmer continually improves the design of the software to match the actual requirements.

Or [Scott Ambler&#8217;s](http://www.agiledata.org/essays/tdd.html):

> Test-driven development (TDD) (Beck 2003; Astels 2003), is an evolutionary approach to development which combines test-first development where you write a test before you write just enough production code to fulfill that test and refactoring.

Or [Wikipedia](http://en.wikipedia.org/wiki/Test_driven_development):

> Test-Driven Development (TDD) is a computer programming technique that involves writing test cases first and then implementing the code necessary to pass the tests.

Or [Bob Martin](http://www.objectmentor.com/writeUps/TestDrivenDevelopment):

> The steps:
> 
>   * Write a test that specifies a tiny bit of functionality
>   * Ensure the test fails (you haven&#8217;t built the functionality yet!)
>   * Write only the code necessary to make the test pass
>   * Refactor the code, ensuring that it has the simplest design possible for the functionality built to date

I may have missed a memo somewhere, but TDD doesn&#8217;t compromise on test first. I think the only confusion is that the name Test Driven Development isn&#8217;t as clear as something like Test First Development or Test First Design. Of course we seem to be headed towards approaches like Dave Astel&#8217;s [Behavior Driven Development](http://video.google.com/videoplay?docid=8135690990081075324&q=Google+techtalks&pl=true) to help alleviate any confusion like this.