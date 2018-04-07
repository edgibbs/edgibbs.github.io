---
id: 672
title: SOA Silliness
date: 2008-11-08T10:46:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/11/08/soa-silliness/
permalink: /2008/11/08/soa-silliness/
categories:
  - soa
  - software development
---
One of our testers thought our ESB was broken. &#8220;Well, when I send in the payload against our main app it works so how come it throws an error here?&#8221;

&#8220;Because we&#8217;re actually validating the SOAP message&#8221;

&#8220;So is this other app.&#8221;

&#8220;Let me show you.&#8221;

At this point the developer created a quick XML message that violated the XSD by wrapping it in junk.

<pre>&lt;junk&gt;
real payload here.
&lt;/junk&gt;
</pre>

He sent it in and the other app happily accepted it. Might as well send a flat file at that point.