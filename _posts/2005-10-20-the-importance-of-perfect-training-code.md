---
id: 164
title: The Importance of Perfect Training Code
date: 2005-10-20T21:47:06+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=164
permalink: /2005/10/20/the-importance-of-perfect-training-code/
categories:
  - software development
---
I may have some perfectionist traits, but whenever I do a code presentation, usually for a training seminar for my folks, I end up spending a lot of time making sure the code is pretty much perfect and follows all the coding conventions. 

Much of the time I&#8217;m borrowing example code from other sites or books, and I have to go in and clean it up. Often variable names are inordinately short or they followed some rule that private variables start with an underscore. Since part of the point in teaching your own seminars is that you can completely customize it for your developers, I don&#8217;t want to miss the chance to reinforce are standards.

The danger is two fold if I don&#8217;t do a good clean-up job. One, they have fun ribbing me about blowing some standard instead of focusing on the examples. Two, they think something is acceptable because I had it in some slide example that way like used a

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
          System.out.println
        </div>
      </td>
    </tr>
  </table>
</div>

instead of Log4J. 

Anyway I&#8217;m mostly ranting on this because I&#8217;m in the midst of putting together a TDD seminar for my folks. It&#8217;s a little scary since I don&#8217;t feel like I&#8217;ve ever gotten to work on a TDD team, though I&#8217;ve practiced it on my private projects for a few years now. As I&#8217;ve learned when acting in the instructor role I need to be overly prepared because I get really nervous when I&#8217;m speaking on something I don&#8217;t know cold.