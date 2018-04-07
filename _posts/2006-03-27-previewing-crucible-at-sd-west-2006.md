---
id: 308
title: Previewing Crucible at SD West 2006
date: 2006-03-27T21:29:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=308
permalink: /2006/03/27/previewing-crucible-at-sd-west-2006/
categories:
  - code reviews
  - conferences
  - software development
---
[Crucible](http://www.cenqua.com/crucible/), a code review tool from fine folks at [Cenqua](http://www.cenqua.com/), is finally closing in on a real beta release. (Disclaimer we&#8217;re already use Cenqua&#8217;s [Clover](http://www.cenqua.com/clover/) product.) I talked to Brendan from Cenqua at SD West 2006, and he explained that Crucible was supposed to be Cenqua&#8217;s second project after Clover. Turns out [Fisheye](http://www.cenqua.com/fisheye/) was a lot more popular than they anticipated. Thus Crucible got pushed back.

It&#8217;s still not quite beta ready, maybe early next month, but it looks like it may really fit the bill for our needs with a simple lightweight code review process. It sits on top of Fisheye their CVS/Subversion browsing product. 

Some nice features they bravely previewed for us:

  * AJAX style commenting while browsing code for the review.
  * Very simple workflow with email/RSS notifications.
  * Nice defaults for the attributes. If my memory serves right there were only two types of severity to an issue in the code <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              major
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    or
    
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
              minor
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    .</li> </ul> 
    
    The really nice thing is it didn&#8217;t try to do anything more. Simple is generally better on features especially when we&#8217;re trying to have lightweight code reviews. I&#8217;ll probably post again on it after getting a chance to play with a future beta.