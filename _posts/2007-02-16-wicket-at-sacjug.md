---
id: 533
title: Wicket at SacJUG
date: 2007-02-16T23:10:47+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/02/16/wicket-at-sacjug/
permalink: /2007/02/16/wicket-at-sacjug/
categories:
  - jsf
  - software development
  - test driven development
---
We had a sort of ad-hoc demonstration of [Wicket](http://wicket.sourceforge.net/Introduction.html) at the local Sacramento Java Users group ([SACJUG](http://www.sacjug.org/index.html)) this week. Out of about 25 people there two people are actually using Wicket. Since there are a ton of web frameworks and we ended up in the JSF camp I just don&#8217;t spend a lot of time looking at new options, but spending an hour or so watching a demo wasn&#8217;t going to kill me. 

Wicket is very component centric and I like the syntax:

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
          public class CalculatorApplication extends WebApplication
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
          public Class getHomePage()
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
          public final class LoginPage extends WebPage
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
          public final class LoginForm extends Form
        </div>
      </td>
    </tr>
  </table>
</div>

And it has some nice features:

  * Stateful by default.
  * No JSP pages.
  * You can use the back button.
  * Minimum reliance on special tools.

Of course my favorite is the POJO centric nature and the fact that they just build their unit testing support package,</p> 

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
          wicket.util.tester
        </div>
      </td>
    </tr>
  </table>
</div>

</a>, into the main API. Almost makes me want to spend some time playing around with it, but I think I&#8217;ll wait until I see some more uptake, since there are far too many web frameworks and no winner or limited pool of winners currently.