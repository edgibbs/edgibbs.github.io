---
id: 324
title: Making a Decision on Confluence
date: 2006-04-15T22:09:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=324
permalink: /2006/04/15/making-a-decision-on-confluence/
categories:
  - software development
---
Our organization has been through three wikis now. It started with [JSPWiki](http://jspwiki.org/) and moved to [PHPNuke](http://phpnuke.org/) and now [Confluence](http://www.atlassian.com/software/confluence/). I don&#8217;t think our story is all that unusual, but it may be illuminating.

The point of course is developers always need a way to share information on workarounds, configuration, or just some defacto practices like how to notify everyone you&#8217;re restarting JBoss on a shared development integration server. Typically there are also a lot of artifacts around individual projects that are helpful to store.

Wikis then solve the typical problem with things like shared drives or email. They&#8217;re easy to add content to, they keep revisions, and anyone with a web browser can access them. The typical downside with wikis is that small barriers are enough to defeat them:

  * You have to deal with some little markup language. If you cut and paste in something out of Word or an IDE, you can find yourself with a painful bit of editing.
  * Since no one owns access to the wiki, the navigation can get pretty screwy and important information can get lost. Self-organizing information architecture can be difficult.
  * Once the initial interest in the wiki wanes it faces the possibility of becoming irrelevant because people stop posting things there and revert to email or other ways.

We started the adventure at our company with JSPWiki. It worked better than I expected for while and people posted a good bit to it about Websphere, JBoss, and testing topics. The left-hand navigation got to be a long scrolling menu as the defacto site for linking new pages. Overall after about 18 months there have been 50 or so items posted. We still use it today, but the addition of new content is maybe one or two items a month. A lot more gets passed around via email.

Another group started up a PHPNuke site, which they consider a wiki, about 9 months ago. I actually consider it more of a content management portal, but it was supposed to serve the same purpose as a wiki. It required you to create an account to do anything so it had an extra barrier to entry. Someone posted something new there about two weeks ago and so I logged in to check it out. It was difficult to find since for some reason it didn&#8217;t appear on the latest news on the front page. After hunting around in the PHPNuke site I found the real problem. All told there were only eight pieces of actual content, so it was a dead wiki walking.

Finally, I looked into Confluence about four months [ago](http://edgibbs.com/2005/12/09/confluence-for-software-development-wiki/ about). I setup a trial and then didn&#8217;t get back to it, but in that short period of time I liked what I saw. It had email integration, RSS feeds, a simple concept of project sites, and most importantly a WYSIWYG editor allowing for simple cut and paste style posts. Still there was the pain of filling out a small PO to purchase a 25 seat license, so it just didn&#8217;t make it to my front burner. And I thought there might be a nice open source one out there that would work better.

Then about a week ago one of our senior developers just asked a very simple question:

> Can we just spend the $1200 and buy a Confluence license? I&#8217;ll do all the work to set it up.

After all the time spent talking about it, I filled out the PO right then and there. And because it had a 30 day trial we have it up and running already. It appears to be working for us so far, but even if it fails $1200 is a lot cheaper than all the time talking about a solution.

After we&#8217;ve spent some time with it I&#8217;ll do a follow up post on what we&#8217;ve learned.