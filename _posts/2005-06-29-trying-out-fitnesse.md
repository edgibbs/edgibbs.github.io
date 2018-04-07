---
id: 23
title: Trying Out Fitnesse
date: 2005-06-29T21:47:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=23
permalink: /2005/06/29/trying-out-fitnesse/
categories:
  - software development
---
Over a lunch break today I pulled down [Fitnesse](http://fitnesse.org/) and started it up. I used it in two sessions at Software Development 2005, but I haven&#8217;t gotten a chance to really run through it on my own since then. I&#8217;m hoping it&#8217;s a simple enough framework to really automate some acceptance tests. The wiki interface with simple tables with parameters, expected, and actual values could really work well.

Still hooking the fixtures into our code seems a little murky. The first example bundled with Fitnesse is the &#8216;Two Minute Example&#8217; that simply does division with a numerator and denominator. I downloaded the newest release and ran into the first little issue after I tried to run the &#8216;Two Minute Example&#8217; locally.

<pre>Exception in thread 'main' 
java.lang.NoClassDefFoundError: fit/FitServer</pre>

Turns out after 20 minutes something is missing in the newest release from 4/5/2005. I downloaded the prior release and the problem disappeared. Since lunch isn&#8217;t that long and I leave my door open that was about as far as I got. Hopefully tomorrow I can setup a fixture that hooks in some of our code.