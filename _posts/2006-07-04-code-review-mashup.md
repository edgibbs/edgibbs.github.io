---
id: 387
title: Code Review Mashup
date: 2006-07-04T21:11:14+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=387
permalink: /2006/07/04/code-review-mashup/
categories:
  - code reviews
  - software development
---
We ran what I&#8217;m going to refer to as a code review mashup early this week on a project. The preparation looked like:

  * Setup a meeting time for a 2 hour block by the tech lead.
  * Setup the code review in Crucible selecting four classes written by three different developers including the lead about one day ahead of time.
  * Added the three developers and myself as reviewers.
  * Planned to walk through the code on an overhead and do more of an inspection.
  * The morning of the review I took about 45 minutes to review 2.2 classes out of four and added about 15 comments to the code using Crucible.

I led/facilitated the review by going through all of my comments. Since I was the only one who had spent any real time prepping, the other developers only caught a few extra things. I think the big takeaway is everyone needs to review the code ahead of time. The last two reviews I&#8217;ve been in too much of a lead role, and not spending the bulk of my day coding I miss things other people can catch.

The review meeting ran much more like a code inspection or walk-through, essentially a code review inspection mashup. I&#8217;m not sure mixing the two styles really works all that effectively.

Still for about 8 hours of investment across four people we caught:

  * A decent amount of coding convention misses, mostly naming conventions such as: <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              findBySSN
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    needs to be
    
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
              findBySsn
            </div>
          </td>
        </tr>
      </table>
    </div>

  * A design debate over whether to break up a fairly large JSF backing bean which is handling 5 physical pages into five separate backing beans or keep it in one. (We didn&#8217;t resolve this for now, but it is a future topic to consider.)
  * Whether to use DTOs when using Hibernate or just use the Hibernate mapped model classes. We talked about the potential ease of not using DTOs, and the potential extra coupling of using Hibernate mapped models through the application layers. For now we&#8217;re using the DTOs.