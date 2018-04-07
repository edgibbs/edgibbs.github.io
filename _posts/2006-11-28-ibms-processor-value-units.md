---
id: 483
title: 'IBM&#8217;s Processor Value Units'
date: 2006-11-28T22:44:51+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=483
permalink: /2006/11/28/ibms-processor-value-units/
categories:
  - software development
  - websphere
---
Being a customer of Big Blue can be pretty painful sometimes. We recently learned that IBM has conveniently decided to radically restructure their licensing agreements around Websphere. Their plan to make sure they get all possible revenue is to charge per core on a processor and per processor type.

According to our contract they can just change things midstream like this without consultation. So our say 50 current processor licenses for Websphere have now been converted with the following formula:

Current per Processor Entitlements x 100 = New Processor Value Unit Entitlements

Thus instead of 50 CPU licenses we now have the wonderful 5000 processor value units. The whole thing reminds me of the Bill Cosby Noah routine:

**Big Blue:** We shall convert your CPU licenses to processor value units.

**Noah:** Right&#8230;, What&#8217;s a processor value unit?

[David Ogren](http://www.ebizq.net/blogs/bpmblog/2006/08/ibms_new_processor_value_units.php) thinks it&#8217;s the worst licensing model he&#8217;s seen yet:

> But perhaps worst of all is what IBM just announced for it&#8217;s middleware pricing. They&#8217;ve brought back the idea of &#8220;power units&#8221; or MIPS based pricing, this time calling it &#8220;processor value units&#8221;. IBM portrays this as providing for more flexibility and simplicity in pricing. (I think flexibility in this context means &#8220;we can charge you more&#8221;.) Most disturbing is their announced intention to &#8220;differentiate licensing of middleware on processors .. [evolving] to differentiate processor families based on their relative performance&#8221;. Meaning that if a faster processor comes out, IBM plans on charging you more to run their software. Or they might charge you more to run on Sun SPARC chips than IBM chips.

As I remember Oracle tried a [similar scheme](http://www.itweek.co.uk/vnunet/news/2115392/oracle-pulls-plug-9i-power-unit-pricing?vnu_lt=itw_art_related_articles) back in 2000-1 and had to drop it after their customers screamed and sales dropped. From a customer standpoint this is just a really problematic policy. As soon as you upgrade your hardware in the next few years your licensing costs could jump through the roof, probably something your company never budgeted for.

I think IBM is just making the open source software model even more tempting with JBoss or even IBM&#8217;s own Apache Geronimo. Suddenly my licensing problems go away, and I can deploy on any hardware I want or setup clusters without forking over the dollars. At the end of the day Big Blue is a services company and this licensing model isn&#8217;t my idea of service.