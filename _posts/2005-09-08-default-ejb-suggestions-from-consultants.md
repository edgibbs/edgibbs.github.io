---
id: 100
title: Default EJB Suggestions from Consultants
date: 2005-09-08T21:56:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=100
permalink: /2005/09/08/default-ejb-suggestions-from-consultants/
categories:
  - software development
---
I had to review a proposal for reworking one of our major applications today. The application has a lot of inherent issues, but one of the interesting things was the solution involved a bunch of Stateless Session Bean Facades. Would have been a reasonable solution except they were describing an application that was to be completely contained in a single J2EE container. The system connects to a legacy mainframe application and a relational database. It of course doesn&#8217;t do distributed transactions. So I&#8217;ve got no idea why EJBs were proposed.

I&#8217;m guessing the Session Facade was proposed by default because a lot of consultants in the Java world are still selling EJB as the way to go. I half expect to get the &#8216;Enterprise&#8217; development argument when I get together for feedback. The argument goes something like, well you wouldn&#8217;t want to build an application without EJBs, how will it scale. [Core J2EE Patterns](http://corej2eepatterns.com/index.htm) has been updated with a [ServiceFacade](http://corej2eepatterns.com/Patterns2ndEd/ServiceFacade.htm) pattern which allows for a POJOFacade Implementation. Maybe this is why I prefer the mentoring consultant model where the consultant&#8217;s major goal is to get a team up to speed.