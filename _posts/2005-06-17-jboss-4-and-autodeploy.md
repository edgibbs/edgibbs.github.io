---
id: 14
title: JBoss 4 and Autodeploy
date: 2005-06-17T21:59:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=14
permalink: /2005/06/17/jboss-4-and-autodeploy/
categories:
  - software development
---
So far after using JBoss 4.0 for 6 months or so we&#8217;ve seen pretty good hot deploy response. Under 3 it was flakey and so you usually just restarted the server. Today we ran into a weird problem with a war file where a fix that had been added wasn&#8217;t getting picked up. After a couple of tries at redeploying it became time to resort to the usual tricks.

  * Drop into the server/default/tmp and server/default/work directories and delete everything related to that war.
  * Reboot the server itself
  * Redeploy the war with a new name

So far none of these have worked so Monday we&#8217;ll have to get really creative. I just love finishing a week with an unsolved configuration issue. Really starts off the weekend on the right foot.