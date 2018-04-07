---
id: 210
title: Confluence for Software Development Wiki
date: 2005-12-09T23:00:01+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=210
permalink: /2005/12/09/confluence-for-software-development-wiki/
categories:
  - software development
---
I hold a semi-regular development practices meeting where we cover all sorts of topics to get to an eventual consensus among our senior developers. The topics range from using maven versus ant to where to put curly braces. A few managers are attending now including a VP, but it hasn&#8217;t seemed to dumb down the dialogue yet.

Today we decided a few things:

  * We&#8217;re going to continue looking at maven on new projects.
  * We are holding to our current coding standard with curly braces starting on the same line as the declaration and the ending bracket on its own line. (We did have an impassioned argument to the contrary from an experienced Delphi developer who&#8217;s very used to the starting bracket on a new line. His compromise is that he can format the code the other way and then just reformat before checking in to CVS.)
  * We need to decide on a central wiki.

We actually have a wiki solution for putting up developer documentation about admin and configuration tasks with JBoss or Websphere. One of our developers got the wiki bug and got [JSPWiki](http://jspwiki.org/) installed and running for our group. There was a lot of activity at first and then it seemed the wiki was in danger of drying up and dying. I&#8217;ve seen this happen before, but recently just this week two of my developers decided to put some new workaround tricks up on the wiki.

In the meeting one of the developers described how it had been painful in the wiki to add a code sample since they ended up having to insert non-breaking spaces on each line to indent the code. So if we pick a new one they really want it to be easier to use, preferably with a semi WYSIWYG editor. And they really want it to be nicer looking and easy to break up by projects. 

The output of this was I ended up with an action item to look into [Confluence](http://www.atlassian.com/software/confluence/). After dinking around with the demo site, I think it fits the bill pretty well, especially with the new semi-WYSIWYG interface they&#8217;ve added for the 2.0 release. And it has tons of separate spaces that you can create for anything you want. So I&#8217;ll probably install the 30-day trial next week.