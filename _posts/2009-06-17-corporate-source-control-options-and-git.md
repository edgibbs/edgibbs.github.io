---
id: 742
title: Corporate Source Control Options and git
date: 2009-06-17T20:51:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=742
permalink: /2009/06/17/corporate-source-control-options-and-git/
categories:
  - management
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/harvest.jpg" /><br /> <!-- http://www.flickr.com/photos/matze_ott/1841491996/ -->
</div>

I&#8217;ve heard about git and decentralized version control systems like Mercurial for a few years. Conceptually it sounded interesting, but not compelling. Over the years I&#8217;ve used the following version control systems:

  * **No version control** &#8211; a very early web startup around 1994. I was blissfully unaware of version control at this point.
  * **VSS** &#8211; A horrible experiment in using a Windows share as version control. Better than nothing, but just barely. I&#8217;m glad to see Microsoft finally retired this beast with the Team System source control. From the few stories I&#8217;ve heard Microsoft never really used VSS themselves and I believe they used to be primarily a Perforce shop.
  * **CVS** &#8211; My first love among source control. For months at a startup in Vegas we had to use VSS on servers that were located at the main office in San Francisco. Just listing a directory could take minutes. After a few months of political battles we finally won them over after the CTO learned one of our developers had to fly to SF with a CD because it was the only way to get a medium sized java project checked in. It was great because it just worked. And the speed was wonderful even if it&#8217;s a bit slow by today&#8217;s source control standards.
  * **Harvest** &#8211; They asked us to use this at one client site. They sent out a special trainer to show us how cool it was. The visual client actually used a combine reaping wheat as the animation when you checked in. It took us just a few hours to drop it and just install a local CVS repository and show the rest of the team had to use it. Computer Associates owns the product now which is a sure sign it&#8217;s at the very end of it&#8217;s life.
  * **Perforce** &#8211; Most recently I joined a shop that used Perforce. I had never heard anything bad about it other than it was a commercial solution which meant some limitations on support in various tools. I found it a bit difficult to adjust to the terminology such as &#8216;client spec&#8217; and other items, but I was pretty happy with it&#8217;s speed. It was noticeably faster than CVS. Of course it also caused headaches because it&#8217;s integration with various open source tools wasn&#8217;t the best. One particular pain point was the Hudson plugin. It turned out some bad decisions had been made in the central repository with relation to directories that contained spaces, despite being hosted on Solaris. Without quoting all the paths the checkouts just failed and the Hudson plugin wasn&#8217;t setup to support this.

Early on at the last organization I was leading towards migrating quickly to Subversion. Eventually given the number of contract developers I would impact I put the decision off until some later time. Subversion has great support these days as the CVS replacement, but I knew git and other options were out there. Perforce also didn&#8217;t have any critical issues and was easy enough to manage since we had already purchased a number of licenses.

My developers really wanted to ditch Perforce for Subversion. As a developer at heart I completely agreed with them, but given all the challenges on our plate the argument just wasn&#8217;t compelling enough from an organizational standpoint. I had a similar recent conversation with our EA manager who asked if we were looking at moving to Glassfish soon over JBoss since we were on a non-Redhat supported version. I pointed out that we had piloted Glassfish recently and were happy with it, but I wanted to wait at least a year to see what the Sun Oracle merger will mean for the Glassfish developers. No one wants to migrate away from JBoss to experience something like what happened with Geronimo.

All the while git in the background git was picking up a lot of traction. I finally broke down recently and purchased [Pragmatic Version Control Using Git](http://www.pragprog.com/titles/tsgit/pragmatic-version-control-using-git). Even if it doesn&#8217;t end up being the right choice for today and I settle on Subversion for now it would appear the world is headed in that direction in the near future.