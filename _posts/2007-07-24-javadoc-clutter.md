---
id: 603
title: Javadoc Clutter
date: 2007-07-24T21:24:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/24/javadoc-clutter/
permalink: /2007/07/24/javadoc-clutter/
categories:
  - software development
---
I once thought Javadoc was a great tool. I added an ant target for every project I built. Now it&#8217;s just clutter. I saw another example of the pain point of Javadoc again recently on an internal project that isn&#8217;t designed to ever be used as an API:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          /*<br /> * Returns Publisher when passed Id<br /> */<br /> public Publisher getPublisherById(String id)<br /> <br /> /*<br /> * Returns Publisher when passed Id<br /> */<br /> public Publisher getInstitutionById(String id)
        </div>
      </td>
    </tr>
  </table>
</div>

Just drives me crazy the comments fall out of sync with the code as soon as someone performs a cut and paste. And the darn things can double the number of lines in a class, especially when you have a lot of short methods. (And you should have a lot of short methods.) Uggh.