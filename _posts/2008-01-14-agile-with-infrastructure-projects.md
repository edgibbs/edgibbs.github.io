---
id: 648
title: Agile With Infrastructure Projects
date: 2008-01-14T22:05:50+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/01/14/agile-with-infrastructure-projects/
permalink: /2008/01/14/agile-with-infrastructure-projects/
categories:
  - project management
  - scrum
  - software development
---
Agile is really designed around software projects. Infrastructure is a different animal. With an [infrastructure project](http://www.agileadvice.com/2005/09/28/agilemanagement/agile-infrastructure-projects-lessons-learned/) some things start to break down:

  * You usually aren&#8217;t writing much code, maybe some database install scripts so no unit tests.
  * Often there&#8217;s no continuous integration to speak of.
  * Configuration tasks on new software are often difficult to estimate.
  * Many tasks end up being time-boxed research items.
  * Team members tend to be specialists DBAs or Linux system admins.
  * Most of your team are system admins, but often they aren&#8217;t dedicated.

I&#8217;ve done a few of these now and generally the most difficult part has been having dedicated staff. System admins and DBAs structure their days around reacting to issues and answering many small requests. The idea of dedicating whole days or weeks to a project is novel. Too novel perhaps as often their management chains are unwilling to dedicate resources.

Our approach has been to use some Agile practices like daily stand-ups and task boards, but these practices haven&#8217;t made for smooth infrastructure projects. Since our QA team has been investing in automated functional tests we now have regression suites for some of our major projects, but that&#8217;s about the only automation we&#8217;ve been able to make use of. It often comes down to a PM/Scrum Master who&#8217;s willing to constantly remove impediments by walking around making sure the project keeps moving forward.