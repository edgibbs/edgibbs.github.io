---
id: 196
title: JSF Adoption Still Difficult
date: 2005-11-22T21:52:14+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=196
permalink: /2005/11/22/jsf-adoption-still-difficult/
categories:
  - jsf
  - software development
---
Two of our senior developers vented on JSF to me today. We&#8217;ve been using JSF on two projects now for about a month and a half and the experiment hasn&#8217;t been going so well despite the marketing hype. One developer explained that he wanted to implement a simple templating solution using Tiles. Turns out you can&#8217;t forward directly to the tiles, like in Struts. So there&#8217;s probably another option or some way to workaround this, but it can&#8217;t leverage well known solutions easily.

Then another developer on our other project explained that the JSF parts were driving them nuts with debugging hell. They tried to implement an AJAX style auto complete in a text field. Unfortunately the JSF pages keep having a problem somewhere, but there&#8217;s no real debugging output. Just press the submit button and nothing happens. JSF swallows the exceptions in a lot of cases and doesn&#8217;t output any sort of useful error message.

Of course these are anecdotal evidence, and they probably have at least some sort of workaround, but it does point out that JSF has not been an easy or productive adoption so far at least for our shop. Of course tomorrow I&#8217;ll be doing some pairing on one of these projects so I&#8217;ll get to understand the issues a little more first hand.