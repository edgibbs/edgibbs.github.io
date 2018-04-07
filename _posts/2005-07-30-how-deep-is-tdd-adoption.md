---
id: 52
title: How Deep is TDD Adoption?
date: 2005-07-30T11:06:43+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=52
permalink: /2005/07/30/how-deep-is-tdd-adoption/
categories:
  - software development
---
Listening again to a [Polymorphic Podcast](http://www.drazz75.com/) while I was out strolling around Sacramento at 5am on my morning walk, I heard commentary that struck a chord. The person being interviewed on the show was [Kent Alstad](http://www.sdc.nl/sessions/SpeakerInfo.aspx?Id=ALSTAD), a developer with 20+ years of experience, who&#8217;s published a book or two in the .NET space. When asked about how he had adopted TDD he started to fumble. His best answer was that he felt guilty about it, but on his most recent projects he hadn&#8217;t done that much actual testing with NUnit because much of the application was in a GUI, ASP.NET I would assume, and when it became hard to test, the testing got dropped.

This seems to be a continuing pattern of anecdotal evidence that I&#8217;m collecting. I see it in my own organization with my bleeding edge developers who walk and talk unit tests, automated builds, etc, but let CruiseControl fail for weeks at time. I see it interviewing developers, who to a person have at least JUnit on their resume, but then admit they haven&#8217;t written a unit test in 2 years, and can&#8217;t remember how JUnit is organized. And finally, I see it in myself when I sit down with a developer to tackle some issue, but I rarely have them write a test, because we can solve the problem without it and they don&#8217;t even have any tests in place to begin with.

So right this moment I feel one of my greatest failings has been getting my developers to adopt TDD, but I&#8217;m beginning to think I have a great amount of company here. The understanding of TDD is fairly wide, but the adoption in many shops is shallow enough for my 1 year old daughter to feel comfortable in. 

I&#8217;m still highly convinced it&#8217;s the right path to go down and the benefits outweigh the costs. It&#8217;s going to be harder than I thought, but if we can adopt TDD in our shop we&#8217;ll jump to the head of the pack.