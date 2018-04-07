---
id: 63
title: Experimenting with XPlanner
date: 2005-08-12T22:44:50+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=63
permalink: /2005/08/12/experimenting-with-xplanner/
categories:
  - software development
---
Now that we&#8217;re starting to run multiple Scrum projects, I&#8217;m finding an excel spreadsheet not quite enough for organizing purposes. I looked at [XPlanner](http://www.xplanner.org/) and [ScrumWiki](http://scrumwiki.org/cgi-bin/wiki.pl?HomePage) today. Gave up on ScrumWiki pretty early since it&#8217;s Perl CGI based and doesn&#8217;t look like its had any active development for over a year. So that left XPlanner. 

XPlanner is setup to work with MySQL, though you can use other databases since it implements its persistence layer with Hibernate. Installing MySQL on my work Windows laptop didn&#8217;t turn out to be too much of a chore, mostly wizard type install these days. No major hitches with XPlanner which is deployed as a WAR file. A minor item was that the current version of XPlanner isn&#8217;t compatible with Java 1.5 since it has the **enum** keyword in some of its packages. A quick addition of

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
          source="1.4"
        </div>
      </td>
    </tr>
  </table>
</div>

to the

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
          javac
        </div>
      </td>
    </tr>
  </table>
</div>

tags and the problem was solved.

Tomorrow hopefully I&#8217;ll get some time to play around with it and figure out if its worth the effort.