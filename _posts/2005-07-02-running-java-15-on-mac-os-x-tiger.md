---
id: 25
title: Running Java 1.5 on Mac OS X Tiger
date: 2005-07-02T23:52:26+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=25
permalink: /2005/07/02/running-java-15-on-mac-os-x-tiger/
categories:
  - software development
---
As it turns out you can pretty easily download the new 1.5 JDK, but there are a few wrinkles. It doesn&#8217;t become your default JDK unless you do some tweaking. In my case this involved IntelliJ as well.

The first step involves [downloading](http://www.apple.com/support/downloads/java2se50release1.html) the 1.5 JDK from apple.

I then assumed running

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
          java -version
        </div>
      </td>
    </tr>
  </table>
</div>

would show me the new 1.5 version. Instead I got:

<pre>>java -version
java version '1.4.2_07'
</pre>

Next step is to change the default JDK:

<pre>>cd /System/Library/Frameworks/JavaVM.framework/Versions 
>sudo rm CurrentJDK 
>sudo ln -s 1.5.0 CurrentJDK 
</pre>

Now when I run

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
          java -version
        </div>
      </td>
    </tr>
  </table>
</div>

I get the expected:

<pre>>java -version
java version '1.5.0_02'
</pre>

After that I had to download IntelliJ IDEA 5 from [intellij.net](http://intellij.net/), because as it turns out the Mac OS X version of 4.5 didn&#8217;t support the 1.5 JDK. Makes sense since Apple didn&#8217;t release 1.5 until just recently so they couldn&#8217;t have built 4.5 to support it. Anyway it&#8217;s a bit beta software so far, but it does let force me to realize the new 1.5 context, which is part of the point. Now I&#8217;m up and running.