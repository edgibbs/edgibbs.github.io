---
id: 378
title: Works On My Machine
date: 2006-06-21T10:04:59+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=378
permalink: /2006/06/21/works-on-my-machine/
categories:
  - automated builds
  - software development
---
Continuous Integration is a good thing.

> Hmmm, it works on my machine.
> 
> &#8212; Developer 

I paired up with a developer yesterday to hook a new project into the build box and Cruisecontrol. We expected a few wrinkles since this is the first project we&#8217;re hooking up to maven instead of ant. Should be just a simple **<maven2>** tag and a few parameters.

We got past the parameter settings faster than expected, maybe 5 minutes on syntax errors like using

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
          mavenhome
        </div>
      </td>
    </tr>
  </table>
</div>

instead of

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
          mvnhome
        </div>
      </td>
    </tr>
  </table>
</div>

and forgetting to checkout the project manually for the first run. So after five minutes it&#8217;s up and running, but it starts failing soon after getting started.

So next we try debugging by just running the maven goals in the checked out codebase. Over and over again it pulls down about 10 dependent jars and then bails on the 11th. It&#8217;s not the same jar each time so the error isn&#8217;t obvious. Current theory is maybe the build box is being throttled by the proxy server, but it was late so we&#8217;ll get back to it in the morning. The build of course works on the developers machines.

Without hooking up the continuos integration early in the project we would have missed what may be a fairly subtle bug.