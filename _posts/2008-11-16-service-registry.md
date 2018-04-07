---
id: 678
title: Service Registry
date: 2008-11-16T08:58:18+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=678
permalink: /2008/11/16/service-registry/
categories:
  - soa
  - software development
---
About the time you realize UDDI doesn&#8217;t buy you that much another question comes up? How do we manage the services? Options include:

  * Put it off because we only have a handful of services?
  * Buy a product or possibly use an open source service repository tool?
  * Setup something informal like a wiki?

When you have a small number of services you don&#8217;t really have an issue. All the developers know about them and they&#8217;re pretty well understood. Adding a registry might only buy you extra complexity.

The tool solution appears to be risky right now. My limited experience in this area is the tools are not mature. In one case the service repository tool became a sinkhole of development resources just to set it up and get it configured.

Martin Fowler recently mentioned an option that has always appealed to me in just using a [wiki as a starting point](http://martinfowler.com/bliki/ServiceCustodian.html). 

> We&#8217;ve seen a lot of fancy products being sold to provide service registry capabilities so that people can lookup services and see how to use them. This client discarded them and used an approach that combined wikis with some interesting data mining (more on that soon).
> 
> &#8212; Martin Fowler

Most wiki&#8217;s have versioning built in as well so the basics are all handled and updating is easy. I know I&#8217;ve really enjoyed using Confluence in the past, and just about any wiki should be able to handle the requirements. I look forward to hearing more.