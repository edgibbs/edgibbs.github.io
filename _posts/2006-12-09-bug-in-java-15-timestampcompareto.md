---
id: 488
title: Bug in Java 1.5 Timestamp.compareTo()
date: 2006-12-09T23:51:52+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=488
permalink: /2006/12/09/bug-in-java-15-timestampcompareto/
categories:
  - software development
  - test driven development
---
About two months ago we caught a nasty issue with getting some

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
          ClassCastExceptions
        </div>
      </td>
    </tr>
  </table>
</div>

when comparing two

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
          Dates
        </div>
      </td>
    </tr>
  </table>
</div>

. The code that failed the unit tests looked something like:

<pre>if (startDate.compareTo(endDate) &lt; 0) {
</pre>

The strange part was the developers running IBM's RAD 6.0 never had failing tests and

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
          ClassCastExceptions
        </div>
      </td>
    </tr>
  </table>
</div>

. The tests failed on the build box. When I tried the tests in IntelliJ they failed as well. After some investigation it was apparent it some of the

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
          Dates
        </div>
      </td>
    </tr>
  </table>
</div>

were coming from a Hibernate mapping class and so they were dates, but in actuality they were

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
          java.sql.Timestamps
        </div>
      </td>
    </tr>
  </table>
</div>

. Since

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
          TimeStamp
        </div>
      </td>
    </tr>
  </table>
</div>

extends

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
          java.util.Date
        </div>
      </td>
    </tr>
  </table>
</div>

this wouldn't appear to be much of an issue. The fix was simple enough:

<pre>startDate is actually a java.sql.Timestamp
endDate is actually just a java.util.Date
</pre>

So just switching the order and utilizing

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
          java.util.Date's
        </div>
      </td>
    </tr>
  </table>
</div>

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
          compareTo()
        </div>
      </td>
    </tr>
  </table>
</div>

makes the problem go away.

<pre>if (endDate.compareTo(startDate) > 0) {
</pre>

Seemed like a crappy overriding of the

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
          compareTo()
        </div>
      </td>
    </tr>
  </table>
</div>

method by

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
          java.sql.Timestamp
        </div>
      </td>
    </tr>
  </table>
</div>

, but it did fix the problem. Some more digging turned up the real story. A bug, [#6304469](http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=6304469), was actually introduced in Java 1.5 and has now been fixed in 1.6. Since RAD 6.0 was running in 1.4 and it only supports 1.4 this explained why we didn&#8217;t see the bug in RAD.

The explanation in the [Java 1.6 release notes](http://java.sun.com/javase/6/webnotes/) is:

> A regression introduced in J2SE 5.0 created a binary compatibility problem with java.sql.Timestamp.compareTo which was only detectable at run-time.
  
> This bug is fixed in Java SE 6, Beta2 and in J2SE 5.0, Update 7 (5.0u7).