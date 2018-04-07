---
id: 497
title: Clean Test Class Code Review
date: 2006-12-25T23:08:34+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=497
permalink: /2006/12/25/clean-test-class-code-review/
categories:
  - code reviews
  - software development
  - test driven development
---
As a bonus Xmas gift this week, I completed my part of a code review of a developer&#8217;s code before heading out Friday. The code review primarily covered a JSF backing bean/controller and a corresponding test case. Even though the tests had mostly been written after the test case was just a joy to read: 

  * Clear test names.
  * Only 2-4 lines of code for most of the tests.
  * Thorough testing of negative conditions like <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              testDuplicateRefundsOnlyCountOnce()
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    .</li> 
    
      * 99% unit test coverage according to Clover.</ul> 
    
    The only thing I was able to catch was a
    
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
              printLines()
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    method that had been used when writing the tests to output something to the console. The method was still hanging around and didn&#8217;t actually do anything because the
    
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
              System.out.println()s
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    had already been removed.