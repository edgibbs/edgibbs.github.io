---
id: 756
title: TDD Takes Years
date: 2009-07-11T22:37:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=756
permalink: /2009/07/11/tdd-takes-years/
categories:
  - management
  - software development
  - test driven development
---
<div align="center">
  <img src="/images/traffic_tree.jpg" /><br /> <!--  http://www.flickr.com/photos/squirmelia/2451382877/  -->
</div>

Unit testing is a practice that takes years to sink in. For many the first experience with the green/red bar is interesting, but not life altering. Maybe it was just a quick demo. They go back to the normal debugging patterns in the IDE or with printing output to the terminal. They try testing for a bit and find battling with legacy code just doesn&#8217;t feel like its worth the effort.

How do you effect change here? After experience with several groups I&#8217;ve found a gradual approach to work better than total immersion:

  * Exposing the team to the concepts, especially if they haven&#8217;t really seen a true TDD session.
  * Explaining the benefits to them as developers with reduction in defects, better code that&#8217;s easier to refactor, and knowing that when you get asked to work on a legacy codebase with a decent test harness that you won&#8217;t have to cross your fingers that the new feature you added didn&#8217;t break some other code.
  * Continuing the conversation through one on ones and other means of how testing is going and where they&#8217;re having trouble writing tests or how writing the tests first might work a little better, or even starting with just some larger integration tests. With one team I asked the question of all the developers every week, &#8216;How many tests did you write this week?&#8217;
  * Celebrating as code coverage metrics start climbing and pointing back at the reduction in defects.

While I often hoped the process of becoming real TDD style developers would take people a few months, it often took years. I never saw overnight success with adoption, but after time I started to see &#8216;aha&#8217; moments among many of the developers:

  * A developer who was dedicated to testing let about 20 unit tests start failing because he&#8217;d made some changes to the domain model. He knew he needed to get back to them, but had prioritized some other work. As the tech lead on the project who I&#8217;d worked with for years saw the failure email from the CI server he rushed over right away and got the developer refocused on fixing the tests first. 
  * Another developer finished off a recent project release and had zero real defects. The code coverage was well over 80% and among the best tested code in the organization. I&#8217;d started introducing testing to that developer over 6 years ago, but now he feels bad not writing tests.

As a manager and a person I treasure these stories as I hear them even if it they were years in the making. They&#8217;re more important than any kudos on an annual review or a big end of year bonus.