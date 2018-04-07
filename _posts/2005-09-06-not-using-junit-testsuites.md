---
id: 98
title: Not Using JUnit TestSuites
date: 2005-09-06T22:11:13+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=98
permalink: /2005/09/06/not-using-junit-testsuites/
categories:
  - software development
---
I&#8217;d never been really excited about setting up TestSuite classes like the classic AllTests in JUnit, but today I ran across an alternative. From a podcast at [SwampCast](http://www.swampcast.com/), [Jim Moore](http://jroller.com/page/Sandymountster?entry=gatorjug_swampcast_on_unit_testing) talks about a best practice being avoiding writing TestSuites.

Obviously they&#8217;re a bit of a pain and can be problematic to maintain, but often you need to break up at least the easy to run tests from the ones that are dependent on an actual database connection or a web GUI being up and running in a container. So you end up with something like GuiTestSuite that you only run with Cruisecontrol. Moore&#8217;s suggestion is to try to never write TestSuites. Simply use introspection in the various IDEs or in ant&#8217;s

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
          junit
        </div>
      </td>
    </tr>
  </table>
</div>

task with the

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
          batchtest
        </div>
      </td>
    </tr>
  </table>
</div>

tag. In order to avoid running dependent tests put them in another package like:

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
          com.edgibbs.example.test.guitests
        </div>
      </td>
    </tr>
  </table>
</div>

So if you have say some functional tests that run against say the actual web interface like JWebUnit you only run them if you include this package.