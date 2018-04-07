---
id: 388
title: The Audit Excuse
date: 2006-07-05T19:39:44+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=388
permalink: /2006/07/05/the-audit-excuse/
categories:
  - scrum
  - software development
---
I tried to remove a small impediment today. Nothing hard, just some access form we have to fill out to allow content authors access to edit content on our intranet. It&#8217;s costing us a few days per content author, and no one can see any value add by going through the process. I shot off an email after the standup meeting to the network admins asking why we have to fill out an access request for such a simple request and who I need to talk about to change it.

I got my response also via email soon enough: 

> Well, in the good old days we used to do it verbally. Then we had to start doing it when we added access to a network share for the content authors. Now we need to do it for the portal content authors. Audits happen around here.

Apparently we&#8217;re not even sure who started the policy. That&#8217;s one of those details I&#8217;ll have to follow up on. I&#8217;m guessing our internal audits group. I may find we have an actual policy because we had an audit finding on this issue.

What I expect to find is we&#8217;ve fallen into this cover your butt policy because of some fear of a possible audit finding. That fear leads to an avalanche of costly bureaucratic policies at many companies. You know the sort of things you have to fill out an elaborate five page justification survey to have your helpdesk download some dangerous open source software like Perl complete with signatures from your CIO granting explicit permission.

I can&#8217;t figure out any reason for this form:

  * We have complete knowledge of who has access to the intranet authoring via LDAP. This includes tracking of all changes by a given content author.
  * All of the content being edited is simple informational content. The worst thing someone can do is accidently delete something.
  * There are no licensing issues involved, our license to Websphere Portal lets us setup as many content authors as we want.

With luck, tomorrow we&#8217;ll be able to mark off the impediment.