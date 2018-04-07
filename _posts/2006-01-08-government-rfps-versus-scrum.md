---
id: 235
title: Government RFPs versus Scrum
date: 2006-01-08T22:17:24+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=235
permalink: /2006/01/08/government-rfps-versus-scrum/
categories:
  - scrum
  - software development
---
I came across a [post](http://danube.com/blog/victorszalvay/empirical_project_tracking.html) proposing that Washington State agencies adopt agile ideas to track projects:

> Our message: stop trying to track project progress by analyzing task level detail (estimated vs. actuals) and instead adopt agile, track velocity, and use empirical measure to predict completion dates. 

This sounds like a great idea, and my past history doing a lot of professional service contracts for California state government agencies would suggest that California has the same very broken RFP process.

Essentially the process goes something like this:

  * Agency sends out an RFP proposal for some IT system.
  * As a consulting shop you either prepare to respond if you knew something about it beforehand. Otherwise as a blind RFP you assume your chances of landing the work are minimal. If your pipeline is pretty dry and you have some people on the bench you&#8217;re more likely to respond despite the low odds.
  * The RFP is generally pretty sketchy on the requirements, but it does make clear that you must include a detailed Gantt chart with lots of tasks, deliverables, and dates.
  
    Sometimes as an added bonus the RFP explains that you must use RUP or the IEEE Software Development process or at least follow all aspects of the PMI&#8217;s PMBOK.
  * And of course it&#8217;s always a fixed price bid, so you do the following: 

  * Throw together an initial plan and cost it out. This often comes to more than a million dollars since there are plenty of unknowns in the RFP.
  * Then decide what the agency actually plans on spending which is usually say $200,000.
  
    Somehow work down to just under that number.
  * Then hope that you&#8217;ll be able to negotiate the scope of the requirements once you land the job.
  * Assuming you actually land the job, at some point you end up working long unbillable hours for free to deliver something that meets their baseline requirements.

  * They&#8217;re very impressed you actually delivered something, but they don&#8217;t have any budget authority to hire outside consultants again for another two years.
It&#8217;s a horribly broken system which allows for a lot of expensive, time consuming failures that are bad for the state agency and bad for the vendor. Unfortunately given the pace of change and the unfortunate push for the lowest bidder in government IT projects I don&#8217;t see it changing soon.

The perfect world would allow a vendor to get hired in based on experience and quality of staff. Then try out the vendor for a Sprint or two at low risk and low cost. If it doesn&#8217;t work out fine, let the vendor go and find a new one. If it does then sign up for a longer contract or even just continue to evaluate every Sprint.

[Victor Szalvay](http://danube.com/blog/victorszalvay) has pretty much the same suggestion:

> We were asked how this would fit into today&#8217;s Washington state RFP mechanism which requires detailed up-front task plans. I asked the audience at large if this task-based approach currently yields successful results. Judging my the silence and the shaking of heads, I&#8217;d say the Washington state government is ready for real change. I suggested they hire vendors that make short-term iterative commitments, pay those vendors based on delivery of the short-term commitments and fire those that do not.

If I ever return back to the the state or local government sector I&#8217;d want to work for a CIO who was willing to try this. Given that the Agile movement seems to be catching on overall maybe we&#8217;ll see Scrum in government before too long, but there are a lot of institutional issues to overcome.