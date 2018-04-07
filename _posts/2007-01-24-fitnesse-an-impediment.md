---
id: 522
title: Fitnesse an Impediment
date: 2007-01-24T21:55:48+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/01/24/fitnesse-an-impediment/
permalink: /2007/01/24/fitnesse-an-impediment/
categories:
  - acceptence testing
  - scrum
  - software development
---
A rather humorous exchange happened today at a standup:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          <b>Developer #1:</b> Well, I worked on getting the Fitnesse tests working, but it turns out I have to use Shale Mock objects to fake all the stuff for JSF, so I'll be working on it again all day today to hopefully finish.<br /> <br /> <b>Developer #2:</b> So, Fitnesse is an impediment.
        </div>
      </td>
    </tr>
  </table>
</div>

The subtext is this is on a project with only a handful of unit tests at all. Of course it&#8217;s both in a portal and using JSF which makes setting up the context to test something like a JSF backing bean a major pain. Since they haven&#8217;t really had many tests much of the team doesn&#8217;t see that much of a point in spending the considerable effort to at least put in some sort of a test harness with Fitnesse tests. 

I did point developer #1 in the direction of hooking Fitnesse up to the service layer which are just plain old POJOs. This should make the testing the business logic a lot easier. He really wanted to use Fitnesse to do an end to end test, but I explained that there was much more bang for the buck in hooking in below the view layer instead of trying to mimic it.