---
id: 279
title: Baby Steps to TDD Adoption
date: 2006-02-24T21:43:13+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=279
permalink: /2006/02/24/baby-steps-to-tdd-adoption/
categories:
  - automated builds
  - jsf
  - software development
  - test driven development
  - websphere
---
After 23 days into the first Sprint on one of my teams projects, I finally got a very rewarding email from Cruisecontrol with the following message:

<pre><b>Unit Tests: (89)</b>
All Tests Passed
</pre>

The comment on the CVS file,

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
          EmployerManagerTest
        </div>
      </td>
    </tr>
  </table>
</div>

, was simply:

<pre>first test cases
</pre>

The back story is I had been charting the unit tests for the project for the past few days showing a very static 85 unit tests. I had even taken to posting updates on the wall with a flat line of bar graphs pointing out the obvious. The 85 unit tests don&#8217;t sound to bad, but they were inherited from an earlier codebase that was being used. All the new code for the Sprint was completely untested.

The project is on a first Sprint and has had the usual sorts of issues:

  * One developer with one past JSF project and one developer with only two past Struts projects.
  * Multiple strange problems with JSF 1.0.
  * Connectivity issues to our legacy system.
  * Websphere configuration issues with deployments and classloaders.
  * RAD 6.0 crashing a few times per day.
  * Not hooked up to Cruisecontrol until about day 16 of the Sprint.

And as usual fixing all of these problems trumped writing tests. So even though it&#8217;s the first tests written on the project and they&#8217;re &#8216;test later&#8217; unit tests, it&#8217;s still a great sign of progress. For the developer who checked in the tests today they&#8217;re his first unit tests written in production code.

As a small bit of gratitude and encouragement I delivered two well deserved Hershey&#8217;s bars to the developers around lunch time. Progress to TDD is slow, but there is progress.