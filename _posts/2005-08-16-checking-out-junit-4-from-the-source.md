---
id: 67
title: Checking out JUnit 4 from the Source
date: 2005-08-16T22:37:13+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=67
permalink: /2005/08/16/checking-out-junit-4-from-the-source/
categories:
  - software development
---
During a meeting of senior developers where we kick around general development issues like whether to use Spring MVC or JSF going forward, a question came up from one of the developers about [JUnit 4](http://www.beust.com/weblog/archives/000292.html) and when it was supposed to be released. The motivation for this was he wanted to try using [TestNG](http://testng.org/doc/) now.

A little light bulb went off in my head on the way to my oncologist&#8217;s appointment about an hour later. Maybe I can checkout the source to JUnit 4. After hunting through the Yahoo group for JUnit, I discovered a post that mentioned just getting the source for the JUnit 4 version on Sourceforge. Sadly enough I admit, I&#8217;ve never pulled down the CVS source before on Sourceforge. I actually never noticed the little CVS link in the projects. So with a little trial and error on the old command line below I got things checked out after a bit of fiddling:

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
          cvs -d:pserver:anonymous@cvs.sf.net:/cvsroot/junit login
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
          Logging in to :pserver:anonymous@cvs.sf.net:2401/cvsroot/junit
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
          CVS password:
        </div>
      </td>
    </tr>
  </table>
</div>

Just hit return here. I mistakenly tried a really old FTP habit of mine and stuck in an email address

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
          junk@junk.net
        </div>
      </td>
    </tr>
  </table>
</div>

. Of course it really needs a blank password so just hit return.

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          cvs login: CVSROOT may only specify a positive, non-zero, integer port (not `2401:').<br /><br /> cvs login: Perhaps you entered a relative pathname?<br /><br /> cvs login: warning: skipping invalid entry in password file at line 6<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Not real sure why I got this message, something to do with some junk in my .cvspass file I&#8217;m sure. Anyway for a minute I throught it was failing but then I ran the next command and realized I was logged in to sourceforge.

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
          cvs -d:pserver:anonymous@cvs.sf.net:/cvsroot/junit checkout -r Version4 junit
        </div>
      </td>
    </tr>
  </table>
</div>

Success at last! I&#8217;ll check out JUnit 4 a bit tomorrow. This of course tweaks my interest to go ahead and pull down 0.6.3 of XPlanner from the Sourceforge as well, though after 0.6.1 and 0.6.2 failed me this is probably futile.