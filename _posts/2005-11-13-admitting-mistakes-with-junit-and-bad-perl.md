---
id: 187
title: Admitting Mistakes With JUnit and Bad Perl
date: 2005-11-13T23:08:15+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=187
permalink: /2005/11/13/admitting-mistakes-with-junit-and-bad-perl/
categories:
  - management
  - test driven development
---
I was talking code with a very old friend, junior year of high school counts as pretty old for me. Anyway he mentioned that I wrote some scary Perl code that he had to look over back in 1998. I admitted that yes, I was just cutting my teeth on more complex coding at that point and I was in a bit over my head. I remember back then thinking that my solution felt wrong even though the 3000 lines of procedural code worked. I remember thinking only that I felt better that a good bit of the code was modularized into individual functions that were generally not to big.

I had the same feeling the first time I tried to implement unit tests with JUnit about 3 years ago. I did the traditional test the DAOs approach which was really pretty much testing the database. The tests took a good while to run, they broke all the time because the data got out of sync. And any change to the DDL and more test rewriting. My approach just felt wrong, though I couldn&#8217;t pin down why. Tomorrow I&#8217;ll pass that story along to my developers when I run them through a JUnit class so they can understand that this stuff isn&#8217;t necessarily obvious the first time through.