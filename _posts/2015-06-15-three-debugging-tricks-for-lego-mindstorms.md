---
id: 1023
title: Three Debugging Tricks for Lego Mindstorms
date: 2015-06-15T17:20:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1023
permalink: /2015/06/15/three-debugging-tricks-for-lego-mindstorms/
categories:
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/lego_club.jpg" />
</div>

My daughter&#8217;s FFL Lego Club is over for the year, but I wanted to two helpful debugging things I learned along the way, that were especially helpful for newer kids. 

This was the first year for a group of 5th and 6th graders and I noticed many of them ended up with some long procedural blocks of code to navigate the robot through obstacles across the board and back to the base. A really common problem was they&#8217;d make some progress, and then come back to the table only to discover the robot didn&#8217;t do what they expected after a &#8220;small change.&#8221;

The first fix for this was actually saving a copy off before making significant changes, just giving it a new name. The Lego LabVIEW environment didn&#8217;t make this easy as you have to cut and paste the blocks by hand into a new program, but it saves a lot of time with the kid&#8217;s longer programs. I&#8217;ve used Git for the same effect, but source control isn&#8217;t the focus here.

A second quick win was testing with the robot connected. Our boys and girls were very set on the program, download, run to the table loop, but I eventually had a few of them persuaded to test with the robot just connected via USB. The best part of this is you can select a single block and then run just that block with the robot. We used this several times to troubleshoot issues with arms that swung back too far and got stuck on lego pieces, which halts further execution and doesn&#8217;t give much feedback on what&#8217;s wrong.

<div align="center">
  <img src="http://edgibbs.com/images/lego_one_block.png" />
</div>

Finally was the one I had the most fun with. Many kids&#8217; programs had dozens of blocks connected. Often they would forget where they added tweaks to turn left, spin, or adjust the shooting arm. As a lover of sound effects I suggested adding sound effects before and after they added their tweaks so they&#8217;d know several things:

  * Did my changes actually get loaded on the robot?
  * Did my changes improved the program?
  * Exactly where to tweak the program again if it just needed another adjustment.

The sounds were fun on their own and they can easily be deleted when the program is ready to go.