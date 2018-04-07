---
id: 64
title: Pain with XPlanner
date: 2005-08-13T23:03:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=64
permalink: /2005/08/13/pain-with-xplanner/
categories:
  - software development
---
While [XPlanner](http://www.xplanner.org/) looked like a good solution for my problem, reality intruded when I got a 2 hour window to play around with it. It requires MySQL and a servlet container (Tomcat). In about 90 minutes on Friday I got it up and running.

Today I tried to setup a sample project or two with iterations, user stories and tasks. All of that seems to work fine. The problem would be that I can&#8217;t actually add team members and assign them to a project, a fairly significant problem. I went with blaming it on myself, until I came across a very [similar bug](http://sourceforge.net/tracker/index.php?func=detail&aid=1119727&group_id=49017&atid=454848). Apparently the fix is that after adding users you sometimes need to restart Tomcat. Unfortunately that didn&#8217;t work for me and the bug isn&#8217;t listed as resolved.

Next step was to drop back a version and try it. Unfortunately, the same problem, I can&#8217;t assign a person to a team. Next try is pulling the snapshot down from the Subversion repository. Or maybe I just fall back to the old excel spreadsheet.