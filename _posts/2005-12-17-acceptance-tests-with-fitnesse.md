---
id: 217
title: Acceptance Tests With Fitnesse
date: 2005-12-17T21:27:54+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=217
permalink: /2005/12/17/acceptance-tests-with-fitnesse/
categories:
  - software development
  - test driven development
---
I&#8217;m in the process of taking all of my lab examples from a TDD/JUnit class which include Bob Martin&#8217;s [bowling game](http://www.butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata) example, a simple bug tracker, and a golf game. I picked up the book, [Fit for Developing Software](http://www.cs.auckland.ac.nz/~rick/), to help me along since I never found the built in documentation quite [sufficient](http://edgibbs.com/2005/08/30/enjoying-fit-for-developing-software/) enough. 

The books helped, though the book is split into different sections for business analysts and developers so you do a lot of flipping back and forth. I have run into one small issue I haven&#8217;t been able to resolve yet in dealing with exceptions.

Exceptions are fairly easy to test for in your standard JUnit framework, and I figure there&#8217;s probably an easy way to to test for them in Fitnesse. Turns out you just put the keyword

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
          error
        </div>
      </td>
    </tr>
  </table>
</div>

in the table cell if the expected result is an error, such as searching for a bug that doesn&#8217;t exist in the bug tracker. The problem I&#8217;m having is that I can&#8217;t find any easy way to examine the message being returned. If I don&#8217;t check for error it prints out the exception message and the related stack trace which is very nice for debugging, but not to useful for QA and besides I&#8217;m expecting it to fail. If I check for error then it&#8217;s all fine and dandy and the test passes, but the message gets swallowed. Hopefully I&#8217;ll run across any easy resolution to this as well.

I actually think that the fact that it throws an error should be good enough for acceptance testing by a business user, but I&#8217;m certain that our QA and business analysts will want to check the error message text exactly since I&#8217;ve seen some of our requirements business rules that for some reason specify in text where a field and error message should appear on the page. This is despite the fact that there are already detailed HTML prototypes. If I get some time maybe I&#8217;ll dig into the Fitnesse [mailing list](http://groups.yahoo.com/group/fitnesse/) archives.