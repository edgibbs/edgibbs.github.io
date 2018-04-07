---
id: 1077
title: Javascript Goes Back to Class
date: 2015-11-16T22:38:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1077
permalink: /2015/11/16/javascript-goes-back-to-class/
categories:
  - javascript
  - software development
---
Not long ago at a user group I saw a strange piece of sample code like this on an overhead projector:

<div class="codecolorer-container javascript vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />
        </div>
      </td>
      
      <td>
        <div class="javascript codecolorer">
          <span class="kw5">class</span> Person <span class="br0">&#123;</span><br /> <br /> &nbsp; constructor<span class="br0">&#40;</span>firstName<span class="sy0">,</span> lastName<span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; <span class="kw1">this</span>.<span class="me1">firstName</span> <span class="sy0">=</span> firstName<span class="sy0">;</span><br /> &nbsp; &nbsp; <span class="kw1">this</span>.<span class="me1">lastName</span> <span class="sy0">=</span> lastName<span class="sy0">;</span><br /> &nbsp; <span class="br0">&#125;</span><br /> <br /> &nbsp; fullName<span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw1">this</span>.<span class="me1">firstName</span> <span class="sy0">+</span> <span class="st0">' '</span> <span class="sy0">+</span> <span class="kw1">this</span>.<span class="me1">lastName</span><span class="sy0">;</span><br /> &nbsp; <span class="br0">&#125;</span><br /> <br /> <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

I chuckle a little bit inside. I&#8217;ve heard plenty of arguments over the years that Javascript&#8217;s prototypical inheritance was the right way to do things and trying to force traditional OO on Javascript was doing it all wrong:

> If you&rsquo;re creating constructor functions and inheriting from them, you haven&rsquo;t learned JavaScript. It doesn&rsquo;t matter if you&rsquo;ve been doing it since 1995. You&rsquo;re failing to take advantage of JavaScript&rsquo;s most powerful capabilities. &#8212; [Eric Elliot](https://medium.com/javascript-scene/the-two-pillars-of-javascript-ee6f3281e7f3)

It turns out ECMAScript 6 has officially added class style OO to the language. So the needs of many occasional Javascript developers to have a more familiar looking construct that would be at home in Java, C#, or Ruby eventually won.