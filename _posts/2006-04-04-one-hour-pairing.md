---
id: 315
title: One Hour Pairing
date: 2006-04-04T20:25:48+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=315
permalink: /2006/04/04/one-hour-pairing/
categories:
  - jsf
  - software development
  - test driven development
  - websphere
---
Today, I blocked out an hour to sit with one of my developers and pair up to write some unit tests and get the Clover IDE plugin working with RAD 6.0. It was actually fairly productive for a single hour, and though only one test actually got written in that hour, I learned some things:

  * The Clover IDE is pretty easy to setup even in RAD, but you have to remember to recompile the code without instrumentation if you want to look at a JSP page in the embedded Websphere instance. Otherwise you get a nasty error warning you about not finding Clover.
  * Writing tests after the fact is always a bit more painful, sort of the Michael Feathers [legacy code](http://www.artima.com/weblogs/viewpost.jsp?thread=101998) bit.
  * On this project we were writing some test classes that tested multiple classes which may be a mistake, but in one hour I couldn&#8217;t really evaluate it. We went ahead and wrote a new test class.
  * We extend a <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              BaseTest
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    class that has most of the JSF setup code in it. It had a
    
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
              testSimple()
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    test in it that was getting run by all the inheriting classes so it was artificially inflating the number of tests. I took the obvious stand that we should just delete the test since it wasn&#8217;t doing anything real. Then we started getting a failure running the tests for the
    
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
              BaseTest
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    running in RAD. (Probably because it didn&#8217;t have any tests). Rather than spend a lot of time investigating we stuck it back in and moved on.</li> 
    
      * Unit testing JSF is a royal pain. This was a good reminder. Knowing intellectually what is driving your developers crazy isn&#8217;t quite the same as sitting down and coding with it.
      * I learned I need to do more of this.</ul>