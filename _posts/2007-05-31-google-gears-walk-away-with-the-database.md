---
id: 571
title: 'Google Gears: Walk Away With The Database'
date: 2007-05-31T13:41:43+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/05/31/google-gears-walk-away-with-the-database/
permalink: /2007/05/31/google-gears-walk-away-with-the-database/
categories:
  - software development
---
Does [Google Gears](http://code.google.com/apis/gears/index.html) expose your data to desktop security problems?

Google just kicked off another new product to offer offline web applications. There&#8217;s a simple plugin that&#8217;s available as a free download under a BSD license. It works for:

  * Firefox
  * IE
  * Safari (almost!)

(With Safari it works if you build Safari&#8217;s webkit from source.)

As for operating systems it supports the big three:

  * Mac
  * Windows
  * Linux

The first example showed Google Reader being used offline. It grabs the last 2000 feeds. The pain point is you have to tell it you&#8217;re going offline, so the syncing is a bit manual. There&#8217;s actually a tiny button to toggle. They seem to understand it just needs to know when you are offline or online and handle the syncing automatically.

SQLite is the offline database engine and it can handle full text searches of millions of documents. 

Finally, the security bullet showed up. It has the same strict-origin security model.

  * A web page with a particular scheme, host, and port can only access resources with the same scheme, host, and port.
  * Using the Google Gears plugin is explicit and the user has to opt-in.

They didn&#8217;t address the main issue that will concern corporate IT security folks, but it is discussed on their security page:

> On the other hand, two people using the same OS login could theoretically access each other&#8217;s Gears data files, just as they could access any other file on the machine.
  
> 
  
> &#8211; Google&#8217;s [Security Documentation](http://code.google.com/apis/gears/security.html) for Google Gears

The nasty scenario is one of your salespeople downloads a few hundred thousand customer records to their own machine. With traditional web applications the data never leaves the server other than to display small sections say in a search results page. With a local database cache you&#8217;re carrying around a copy of all of that information.

Looks like we&#8217;re going to see a big push for offline web applications.

### Update

Turns out at least some developers have already thought about the stolen laptop use case with offline web apps. A developer of Dojo Offline talked about what to do about a stolen laptop. Dojo Offline is a new javascript library for offline use of web applications. It uses Google Gears for offline. 

Without a good answer an entire swath of industries won&#8217;t dare touch offline mode. Right now Dojo offline adds a DES encryption library with functions to encrypt and decrypt. The example used encrypting/decrypting SSNs. He also pointed out that doing this in javascript can be computationally intensive and hasn&#8217;t been that feasible before. Right now though using Google Gears worker threads they can encrypt/decrypt in javascript at about 80k/second. 

Good to see developers are already realizing this issue needs to be figured out.

<!-- Technorati Tags Start -->

Technorati Tags:
  
<a href="http://technorati.com/tag/GDD07" rel="tag">GDD07</a> 

<!-- Technorati Tags End -->