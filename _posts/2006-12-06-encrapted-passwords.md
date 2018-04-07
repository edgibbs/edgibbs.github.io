---
id: 487
title: Encrapted Passwords
date: 2006-12-06T23:42:11+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=487
permalink: /2006/12/06/encrapted-passwords/
categories:
  - security
  - software development
---
Learned a new term today going through [19 Deadly Sins of Software Security](http://blogs.msdn.com/michael_howard/archive/2005/07/11/437875.aspx). They give an example of a URL containing a strange looking id parameter:

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
          www.xyzzy.com?id=TXkkZWNyZStwQSQkdzByRA==
        </div>
      </td>
    </tr>
  </table>
</div>

Turns out a simple run through a base64 decoder for gives you:

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
          My$ecre+pA$$w0rD
        </div>
      </td>
    </tr>
  </table>
</div>

The authors then refer to this as an &#8220;encrapted&#8221; password.