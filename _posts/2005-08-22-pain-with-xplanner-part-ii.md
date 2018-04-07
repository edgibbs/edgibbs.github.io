---
id: 83
title: Pain With XPlanner Part II
date: 2005-08-22T23:02:15+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=83
permalink: /2005/08/22/pain-with-xplanner-part-ii/
categories:
  - software development
---
I got really excited that I was finally going to be able to install XPlanner on my XP laptop for work by pulling down the latest source with subversion, [0.7b2](http://docs.codehaus.org/display/XPR/Subversion). Unfortunately the results have been eerily similar to the first attempt. Essentially I can never add a person to a project, making it well nigh useless to use.

So back to my trusty Mac OS X iBook. After about 90 minutes I got XPlanner 0.6.2 up and running and learned that MySQL has a very nice GUI installer for the Mac these days. The only major change I had to make was to change localhost to 127.0.0.1 in xplanner.properties:

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
          hibernate.connection.url=jdbc:mysql://127.0.0.1/xplanner?autoReconnect=true
        </div>
      </td>
    </tr>
  </table>
</div>

It still feels a bit clunky, but I think it&#8217;s usable now that I can add people to tasks. Even though it&#8217;s late I feel a lot better getting over the frustrating hurdle.