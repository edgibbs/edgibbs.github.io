---
id: 32
title: Splitting Up the Default /lib Directory
date: 2005-07-11T21:21:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=32
permalink: /2005/07/11/splitting-up-the-default-lib-directory/
categories:
  - software development
---
Came across an interesting idea in a directory structure for the examples in a [Spring tutorial](http://www.zabada.com/technology/Wiki.jsp?page=ZabadaSpringRecipesExampleCode) at Zabada Technologies. I&#8217;ve never seen it before, but it does solve a common problem I&#8217;ve had with mixing jars that were only needed for testing or things like the servlet-api.jar which would already be in any container.

The solution is simple. The main top level

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
          /lib
        </div>
      </td>
    </tr>
  </table>
</div>

directory just contains all the jars that are actually needed to run the app. Another top level

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
          /lib-build
        </div>
      </td>
    </tr>
  </table>
</div>

is just used for dependent jars like the servlet-api.jar and the junit.jar that would only be used for building. 

Since I still haven&#8217;t looked into [AppFuse](http://raibledesigns.com/wiki/Wiki.jsp?page=AppFuse) and it&#8217;s directory structure I don&#8217;t know whether I&#8217;ll adopt this as a default for the team yet, but it is a nice simple solution. I just have to run it by our development practices committee, and convince them of the usefulness.