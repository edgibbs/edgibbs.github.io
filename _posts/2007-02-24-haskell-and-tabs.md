---
id: 535
title: Haskell and Tabs
date: 2007-02-24T22:38:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/02/24/haskell-and-tabs/
permalink: /2007/02/24/haskell-and-tabs/
categories:
  - haskell
  - software development
---
Today, I learned Haskell doesn&#8217;t like tabs. Haskell apparently uses some syntax conventions to connote things like blocks. I was working my way through a [Haskell tutorial](http://www.iceteks.com/articles.php/haskell/2) when I found the following snippet of code kept getting compiler errors:

<pre><b>fails</b>
main = do putStr "You are? "
          name &lt;- getLine
          greet name
</pre>

Turns out you can also enclose a block in angle brackets so this code worked

<pre><b>compiles</b>
main = do { putStr "You are? ";
name &lt;- getLine;
greet name }
</pre>

Then it dawned on me. My TextMate Haskell setting were showing

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
          Hard Tabs
        </div>
      </td>
    </tr>
  </table>
</div>

instead of

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
          Soft Tabs
        </div>
      </td>
    </tr>
  </table>
</div>

with spaces. Flipping it to use spaces made the same code pass compilation.

<pre><b>compiles</b>
main = do putStr "You are? "
          name &lt;- getLine
          greet name
</pre>

Experimenting with lining up the arguments after the do showed that all of the statements had to line up vertically. Thus this reasonable looking syntax would fail:

<pre><b>fails</b>
main = do putStr  "You are? "
                  name &lt;- getLine
                  greet name 
</pre>

I&#8217;m still very much at the beginnings of digging into Haskell, but it&#8217;s nice to play around with a language purely for intellectual curiosity.