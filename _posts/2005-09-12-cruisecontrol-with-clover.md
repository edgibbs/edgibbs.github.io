---
id: 102
title: Cruisecontrol with Clover
date: 2005-09-12T21:41:28+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=102
permalink: /2005/09/12/cruisecontrol-with-clover/
categories:
  - software development
---
Learned some things today to get something running with Clover. First off I learned that Clover uses it&rsquo;s own embedded version of ant unless you specify otherwise. IntelliJ does a similiar thing, so you just have to tell it where yours is so it can use your version of ant.

<pre>&lt;schedule interval=&rdquo;60&rdquo;&gt;
  &lt;ant anthome=&rdquo;C:\apache-ant-1.6.5&rdquo; buildfile=&rdquo;cc-build.xml&rdquo; target=&rdquo;build&rdquo;/&gt;
&lt;/schedule&gt;
</pre>

This took me a little while to catch until I noticed the console was reporting running 1.6.2 and I only had 1.6.5 on the machine.

I had all sorts of problems getting the Clover html reports to run until I added fork=&#8221;yes&#8221; to the

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
          <junit>
        </div>
      </td>
    </tr>
  </table>
</div>

ant task. Then of course I had an issue with it not being able to find the clover.jar package. I need to go back and research a bit on the fork option, but I found a rather quick fix. I just added clover.jar to the CLASSPATH. It felt a bit like a hack since I couldn&#8217;t figure out why ant couldn&#8217;t find clover.jar on its own. Anyway research for another day.

Turns out on the project I ran it against we get a stunning 7% test coverage, mostly due to the bulk of the code being in Struts Action and Form classes that aren&#8217;t being tested.