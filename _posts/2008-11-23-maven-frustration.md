---
id: 686
title: Maven Frustration
date: 2008-11-23T17:07:49+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=686
permalink: /2008/11/23/maven-frustration/
categories:
  - automated builds
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/maven_book.jpg" />
</div>

Browsing [Howard Lewis Ship&#8217;s blog](http://tapestryjava.blogspot.com/2008/11/maven-displaying-version-number-in.html) I came across a short post on his maven frustrations:

> I still like the concept of the repository and the transitive dependencies; that aspect of Maven is worthwhile, but as a build tool, it sucks up far more time and energy than it saves. Possibly an order of magnitude more. 

I&#8217;ve always had those same sort of frustrations with maven often due to a lack of clear documentation. Browsing through the shrinking computer section at Borders I chanced upon the O&#8217;Reilly maven book and with a 40% off coupon went ahead and picked it up. 

In my current organization they were an early adopter of maven. Yes, that means we are running maven 1.0 in all its glory. Maven 1.0 was a failed experiment and led to a &#8220;complete rewrite&#8221;. We&#8217;re using maven 2 for new projects, but we&#8217;ll have some pain in making the migration for a number of older projects.

I just want to jump in and get some things done. With ant or rake this was easy. With maven it involved searching for documentation or looking for plugins to see if they existed. I&#8217;m really hoping the Sonatype book fixes that issue. It has a free [online version](http://books.sonatype.com/maven-book/reference/public-book.html) as well.