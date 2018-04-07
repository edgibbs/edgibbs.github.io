---
id: 56
title: Microsoft Finally Updating VSS?
date: 2005-08-03T21:54:59+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=56
permalink: /2005/08/03/microsoft-finally-updating-vss/
categories:
  - software development
---
Read through a few [posts](http://subversion.tigris.org/servlets/ReadMsg?list=users&msgNo=36272) over on the Subversion site after someone pointed to it. So apparently VSS will finally follow the Dodo bird off a cliff. It&#8217;s about time!

VSS had always been an amazingly bad version control system. I worked for an [ecommerce dotcom](http://www.xuma.com/) back in 2000 where VSS was the default source control system. After one of our uber developers wrote his own proxy service for a client with about 500 classes he tried to check it in. Since VSS assumes it&#8217;s on a local network share and we were actually on a VPN with limited bandwidth to the corporate office in SF it took 8 hours and failed on the initial attempt. Just getting a directory listing in VSS took minutes sometimes.

Anyway after he had to fly out to the SF office to successfully check it in, the company considered moving to CVS. The final nail in the coffin were the explanations from our handful of ex-Microsoft developers. As one of them put it, &#8220;Oh, we never used Source Safe at Microsoft, it doesn&#8217;t scale.&#8221;