---
id: 555
title: Twitter is UDP
date: 2007-04-22T19:58:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/04/22/twitter-is-udp/
permalink: /2007/04/22/twitter-is-udp/
categories:
  - conferences
  - ruby
  - software development
---
> Someone asked me if Twitter was TCP or UDP. UDP, it&#8217;s definately UDP. I can&#8217;t talk about the numbers, but UDP.
> 
> &#8211; Blaine Cook
  
> Scaling Twitter talk at 2nd Annual Silicon Valley Ruby Conference

[Blaine](http://romeda.org/) talked about dealing with traffic on the busiest Rails based site. His comment was related to their use of [DRB and Rinda](http://www.chadfowler.com/ruby/drb.html), a distributed object system for ruby, basically RMI. Apparently [Twitter](http://twitter.com/) has been getting so much traffic at times that there&#8217;s no way it&#8217;s going to catch up, so the solution was to just drop the queue when it got too big since it wasn&#8217;t going to catch up anyway. A purely pragmatic approach for a very popular site experiencing growing pains.

(The conference was pretty great and I&#8217;ll probably be culling posts from my notes for the next week or so. The slides from Blaine Cook&#8217;s talk can be found on [Slideshare](http://www.slideshare.net/Blaine/scaling-twitter/).)