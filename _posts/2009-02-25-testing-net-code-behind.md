---
id: 726
title: Testing .NET Code Behind
date: 2009-02-25T21:21:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=726
permalink: /2009/02/25/testing-net-code-behind/
categories:
  - automated builds
  - code reviews
  - software development
  - test driven development
---
Running through a recent code review on an outsourced internal project I came across a new issue. The developers have built a few SharePoint Web Parts in using ASP.NET. I gently asked where the unit tests where since I&#8217;d dug around in source code and not seen any. 

The developers looked a little surprised and sort of thought I was talking about manual unit testing, but I reiterated that I meant NUnit or MSTest unit tests. There was a short discussion. What followed was they couldn&#8217;t see how they could unit test the Page Behind code. This is an unfortunate old story.

Testing controllers in most web frameworks is painful. The classic example is Struts Action classes where you can use StrutsTestCase, but the solution isn&#8217;t elegant. JSF was an even worse experience, especially the 1.0 spec. Lately messing around with Grails has made it a bit easier, but I still find it to test the controllers through a front end functional test like Selenium. Of course in Rails it&#8217;s fairly trivial.

I&#8217;ve followed some agile bloggers in the MS world for some time and I knew this problem existed in the ASP.NET world. I knew a lot of them advocated a model-view-presenter (MVP) design to allow for easy unit testing. I assumed with Microsoft MVC out now that this problem is solved. It appears to be a much better story, but currently Microsoft MVC doesn&#8217;t integrate directly with Sharepoint.

The next step was to find a specific library. It turns out there is one much like StrutsTestCase or other libraries that make it easier to test web controllers. NUnitAsp to the rescue, coded by no less than James Shore. Then I read the note on the front page from about a year ago: 

> NUnitAsp still has some dramatic flaws: no support for Javascript, tests running in a different process than ASP.NET, difficulty setting up sessions. Most people ended up using it for acceptance testing, rather than unit testing, and Selenium, Watir, and the like are better for that. Most folks &#8220;in the know&#8221; are using presentation layers to make ASP.NET so thin that a tool like NUnitAsp isn&#8217;t helpful.
> 
> &#8212; [James Shore&#8217;s note](http://nunitasp.sourceforge.net/) on NUnitASP Development

So much for a silver bullet. Ever the optimist I had hoped for something like this:

  * Quickly find a nice explanatory tutorial and send the developers the link.
  * Answer a few questions as they experimented with their first tests.
  * Hook up the project to a continuous integration server and start running the tests.
  * Next code review we talk about the adoption of an MVP approach.

Looks like this is going to require some more work.