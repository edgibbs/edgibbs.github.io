---
id: 222
title: Checkstyle Reporting Custom Exception Errors
date: 2005-12-22T19:52:51+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=222
permalink: /2005/12/22/checkstyle-reporting-custom-exception-errors/
categories:
  - software development
---
For a while now I&#8217;ve seen the following error show up in our Checkstyle reports:

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
          java.lang.RuntimeException: Unable to get class information for DataAccessException
        </div>
      </td>
    </tr>
  </table>
</div>

There was a pattern to this where any custom exception couldn&#8217;t be looked up. After about 30 minutes of googling about usually just finding people&#8217;s checkstyle reports I came across the suggestion to take out</p> 

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
          RedundantThrows
        </div>
      </td>
    </tr>
  </table>
</div>

</a>. That solved the problem.