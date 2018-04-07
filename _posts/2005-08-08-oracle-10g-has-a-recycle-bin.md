---
id: 60
title: Oracle 10g has a Recycle Bin
date: 2005-08-08T22:47:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=60
permalink: /2005/08/08/oracle-10g-has-a-recycle-bin/
categories:
  - software development
---
I learned about one of those wonderful issues that crop up in software development that are just about impossible to plan for. One of my senior developers who&#8217;s rolling out a small Hibernate project mentioned they had run into an issue with Oracle 10g. This was the first project we&#8217;ve used 10g on, but all of a sudden he started getting strange errors when he tried to generate the schema on the fly. After some frustration it turned out that DROP doesn&#8217;t really mean DROP in 10g. Oracle has added the idea of a [recycle bin](http://www.oracle-base.com/articles/10g/Flashback10g.php#flashback_drop) so that you can recover the table. A quick removal of the default setting and the problem was solved.