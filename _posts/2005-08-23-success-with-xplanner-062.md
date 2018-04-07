---
id: 84
title: Success with XPlanner 0.6.2
date: 2005-08-23T22:00:29+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=84
permalink: /2005/08/23/success-with-xplanner-062/
categories:
  - software development
---
After getting XPlanner running late last night on my iBook, I got a chance to try it on my PC at work late this afternoon. After dropping back to MySQL 4.1 instead of MySQL 5.0 the install went pretty cleanly and all of a sudden I could add users to a project and assign them to tasks. Of course when adding new users to get them to show up you still need to recycle your app server, Tomcat 5.5 in my case.

I spent some time going through the interface tonight. As per usual with an open source project there is fairly minimal documentation, but you can flail your way through the interface and figure it out. For Scrum one hint I did find is to setup a Product Backlog Iteration far in the future, and then move them into Sprints as they get lined up. The time tracking is more sophisticated then I need and I probably won&#8217;t use the tool to have the developers individually track their time. One funny think is that none of the charts appear. Apparently they fire off and run on some sort of overnight schedule. Considering mine&#8217;s on a laptop I&#8217;m not sure I&#8217;ll see the charts tomorrow.

Right now I think it&#8217;s going to meet my needs well enough for a basic tracking tool, and it saves me from Excel hell.