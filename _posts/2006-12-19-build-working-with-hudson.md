---
id: 494
title: Build Working With Hudson
date: 2006-12-19T22:28:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=494
permalink: /2006/12/19/build-working-with-hudson/
categories:
  - automated builds
  - software development
---
We&#8217;ve had an issue with one of our project builds that cruisecontrol can&#8217;t successfully checkout from CVS using maven 2. We went ahead and just manually logged into the build box and just ran a

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          cvs update
        </div>
      </td>
    </tr>
  </table>
</div>

before each build. It works, but it&#8217;s clunky.

I tried [luntbuild](http://luntbuild.javaforge.com/) about a month or so ago, but I couldn&#8217;t get it to build. Then yesterday I pulled down [Hudson](https://hudson.dev.java.net/), after seeing a short link to it on [Cote&#8217;s blog](http://www.redmonk.com/cote/2006/11/22/links-for-2006-11-22/). Web based, helpful documentation, and a pretty nice looking interface. After a few hours of troubleshooting I got our problematic build running successfully. The only disadvantages that I haven&#8217;t resolved yet seem to be:

  * The emails it sends out don&#8217;t include a lot of information, you have to link back to the web site to see the details.
  * Merging in checkstyle reports doesn&#8217;t seem to be an option.
  * Linking in artifacts like clover reports isn&#8217;t done on a simple link from the front of the build page, you have to navigate through the directory structure.

Not sure if we&#8217;ll just move to Hudson for our default continuos integration server, but I think cruisecontrol is getting outpaced by numerous other options.