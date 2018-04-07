---
id: 85
title: Self Contained WAR/EAR Versus Shared Libraries
date: 2005-08-24T22:11:02+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=85
permalink: /2005/08/24/self-contained-warear-versus-shared-libraries/
categories:
  - software development
---
An old issue came up today when a developer dropped by my office and asked whether he should be putting the jars for his project in the project&#8217;s lib directory or loaded into the shared JBoss lib directory. 

My default response was no, but I&#8217;ve gone ahead and thought about it a bit. Based on my experience as a consultant and building projects on servers I didn&#8217;t control I never wanted to worry about the app server and what was out there so I always included all the jars I needed. On most frameworks or tools I&#8217;ve looked at they were pretty much setup the same way. Going further back from my Perl CGI days long ago it always drove me crazy that many Perl apps required a ton of dependent libraries that you always had to dig up on CPAN. So inherently I like the idea that I have every library I need stored with the project.

The developer made the argument that it was better to reuse the jars in the shared server library. And he was concerned about deploying large WAR files. The large WAR files is pretty much a non-issue, given the requirements most places have and the overkill hardware this never seems to be a problem. I also don&#8217;t like classloader issues when they crop up and encapsulating everything pretty much takes care of that. Still the reuse argument is pretty basic.

Of course this means if you have a dozen projects deployed and you decide to upgrade some version of a commons jar you may have to clean up 12 different projects even though many of them are probably never going to need to be touched otherwise. And in our environment some of our applications will deploy to JBoss and some to Websphere which seem to handle class loading issues differently. According to IBM [wisdom](http://www-128.ibm.com/developerworks/websphere/library/techarticles/0112_deboer/deboer.html) apparently they suggest keeping all the libraries in the EAR or WAR. We&#8217;ve heard the same thing from some of their consultants.

So I think we&#8217;ll still encapsulate all the jars with the project, but I&#8217;ll probably run the idea by some of my senior developers. Never good to assume you know the best way of doing things.