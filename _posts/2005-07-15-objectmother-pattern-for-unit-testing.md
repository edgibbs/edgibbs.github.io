---
id: 38
title: ObjectMother Pattern for Unit Testing
date: 2005-07-15T21:20:50+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=38
permalink: /2005/07/15/objectmother-pattern-for-unit-testing/
categories:
  - software development
---
I just came across the [ObjectMother](http://c2.com/cgi/wiki?ObjectMother) pattern for creating a factory object to provide all sorts of test objects for unit testing. Essentially you create a class or classes with lots of nice static methods that return already setup objects for testing. This is especially helpful on larger projects where you have a lot of code that gets into each

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
          setUp()
        </div>
      </td>
    </tr>
  </table>
</div>

method. I&#8217;ll probably try it out on some of my home projects before I try to sell anyone on my team with using it.

Interestingly enough most of the blog entries that come up high when you google for &#8216;ObjectMother&#8217; are for .NET developer blogs. I don&#8217;t know if that says anything about the pattern or not.