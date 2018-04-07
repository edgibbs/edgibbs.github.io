---
id: 848
title: Second Wave of SOA
date: 2010-06-16T21:07:30+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=848
permalink: /2010/06/16/second-wave-of-soa/
categories:
  - soa
  - software development
---
After an incredible hype cycle back in 2005 many organizations took the plunge. We were going to ride SOA into a new highly productive development environment. The idea was we&#8217;d build business services and then start composing applications on the fly based on these service components. The reasons for diving headfirst into SOA included:

  * Gartner and many tech magazines pushed hard that this was the wave of the future. We haven&#8217;t had a tech hype cycle since.
  * At a high level the story was compelling, especially the idea of working closely with the business.
  * Enterprise vendors needed a new story to sell complex, high cost software after ERP packages started having so many expensive failures, and app servers were largely commoditized by the success of JBoss.
  * As a baseline XML had become well understood, and web services were a much easier integration story than CORBA.

So a large number of IT shops jumped in to build their SOA solutions. Some efforts crashed and burned completely and the organization walked away. Others fought through the learning curve, the mass of WS* specs, and delivered some useful services. Still others worked with large system integrators and delivered solutions that were little more than overly complex integration services with large XML payloads presented as a grand new SOA Architecture.

Many others sat out the the whole SOA revolution. They didn&#8217;t go out and buy an expensive ESB/BPEL/Composite Application Suite. They let others go through the pain and tried to decide if it was worth it. In the Java space it was similar to the large number of shops who decided to pass on EJB and just stuck with web containers like Tomcat.

What I see now out in the field is a number of those IT shops taking a second look at SOA. There are a number of factors that make it worth taking a second look at SOA:

  * Integrating with other organizations these days often assumes you can hook up to a web service they already have.
  * The testing story has gotten better, even if much of it is still functional testing.
  * The tool vendors have created reasonably decent tools unlike the early generation that were plagued with bugs
  * The open source solutions things like Camel and ActiveMQ are proven 
  * The cloud computing meme is putting an emphasis on thinking and utilizing services to create a complete application.

As I&#8217;m out at client sites over the next year I expect to continue to see this trend increase with many sites taking a second look at implementing some sort of SOA. (And yes SOA is still a fuzzy term that I don&#8217;t hope to define here.)