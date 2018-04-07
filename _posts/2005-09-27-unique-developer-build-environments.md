---
id: 116
title: Unique Developer Build Environments
date: 2005-09-27T23:42:29+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=116
permalink: /2005/09/27/unique-developer-build-environments/
categories:
  - software development
---
Once again this development anti-pattern reared up and bit me. I lost the good part of an afternoon because I didn&#8217;t get around to insisting that every project be build-able from it&#8217;s ant build script in any environment.

The problem all started at lunchtime. Pretty much my entire development team is in some sort of training this week, but some of them are just in the next building over. It turns out that one of my contentious developers stopped by his desk on his lunch break and worked on his current project, though nothing was checked into CVS. He then deployed the war to the development integration box and went back to class. Unfortunately the WAR developed a nasty issue pretty much right away and since one of our mainframe developers is using it to test the integration to the mainframe we had a problem.

I don&#8217;t really believe in pulling a developer out of class unless it&#8217;s a true emergency so I vowed to deal with it between bites of a microwave burrito. Two hours later I was hunting for my fourth dependent jar. As it turns out this project only builds on two developer&#8217;s desktops. There are tons of dependent jars that are just supposed to be magically installed in JBoss&#8217;s default library directory. It only took about half an hour to find the ones I was missing on my machine, but I kept getting failures from our cruisecontrol box. Turns out I have so much extra stuff installed that it was finding what it needed, but on a base install with a base JBoss it didn&#8217;t have nearly enough.

I really, really dislike non-self contained projects. And I despise hunting down dependencies just to get an application to compile. After the jars got resolved another hour later it turns out theirs some properties file that appears to be nowhere in CVS. I guess I was supposed to know about this magic. Since it contains the connection parameters to make an RMI call to our legacy mainframe the application bombs real fast.

So by the time I had to go pick up my daughter, the application was still failing on the buildbox so I still can&#8217;t fix it on the integration server. I&#8217;ve had to check in a lot of things into the project to get it to this stage which will probably cause the developers some grief, but at the end of the day I think they&#8217;ll understand how their current practices have led to a fairly untenable situation:

  * The project has two developers so if they&#8217;re both out no one else can build the system without hours of pain.
  * Leaving dependencies on jars on app servers is great until someone deletes one, upgrades it, or just wants to port you to something other than JBoss.
  * If your automated build tool can&#8217;t build the project from scratch, neither can anyone else unless they have some tribal knowledge.

OK, enough ranting.