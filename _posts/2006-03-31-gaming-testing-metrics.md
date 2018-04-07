---
id: 311
title: Gaming Testing Metrics
date: 2006-03-31T20:43:07+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=311
permalink: /2006/03/31/gaming-testing-metrics/
categories:
  - software development
---
I read Larry Osterman&#8217;s post on [Measuring Testers by Test Metrics Doesn&#8217;t](http://blogs.msdn.com/larryosterman/archive/2004/04/20/116998.aspx) via [The Best Software Writing Vol I](http://www.joelonsoftware.com/articles/BestSoftwareWriting.html). It reminded me of a failed experience from about a year ago on a death march project.

The scenario was simple enough. Our large project had been underway for 2.5 years and had been in defect resolution for at least 1.5 years (Death March). Thus we had well north of 1000+ defects and were constantly falling behind on getting them resolved. 

Given this one of our senior developers suggested maybe utilizing an oft forgotten field in our Mercury TestDirector bug tracker might really motivate faster bug fixing. The field was

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
          Estimated Fix Time
        </div>
      </td>
    </tr>
  </table>
</div>

and wasn&#8217;t required so it was generally left blank. The suggestion was to bring it up at our daily stand ups and explain that going forward all the developers should fill this out on their new defects with real estimates. 

Not a bad idea in principle. Developers have to estimate the time for their assigned bugs and then they&#8217;ll naturally want to fix the defects within that timeframe. Guilt and professional pride will help re-motivate the developers on this great death march. So here&#8217;s what happened:

  * Developers started reluctantly putting in estimated fix times.
  * Most of those times were in multiples of 8 hours since it was easier to estimate in days and historically many of the defects required a lot of negotiation since they were really requirement changes or clarifications.
  * This was a death march project so no one felt all that guilty if they didn&#8217;t manage to hit some estimated fix time estimate.
  * Everyone stopped filling out the field again within a few weeks because it wasn&#8217;t required.

So again it reinforced the lesson that trying to drive behavior with metrics is likely to be a failed effort. I still like metrics, but mostly as a source of feedback. Negative reinforcement with a single statistic tends to fail or lead to gaming the system.