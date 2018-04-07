---
id: 298
title: Are There Any JSF Best Practices
date: 2006-03-17T22:11:14+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=298
permalink: /2006/03/17/are-there-any-jsf-best-practices/
categories:
  - conferences
  - jsf
  - software development
---
I attended a talk today at SD West 2006 really hoping to hear some hard earned lessons on better approaches to JSF development. Heck, the talk was entitled:

**JavaServer Faces Programming and Best Practices**

Unfortunately I got a high level overview of JSF and how great it <strike>is</strike> will be with JSF 1.2. The whole spiel about the 6 phase event life-cycle and how great it is that you have another XML configuration file and another tag library. It turns out the best practices are part of Sun&#8217;s [blueprints](https://bpcatalog.dev.java.net/nonav/webtier/templating/frames.html).

The JSF blueprint stuff is almost laughable. They actually use this statement on how to do templating in JSF:

> As we saw, a developer can simply create a layout with
> 
> <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
>   <table cellspacing="0" cellpadding="0">
>     <tr>
>       <td class="line-numbers">
>         <div>
>           1<br />
>         </div>
>       </td>
>       
>       <td>
>         <div class="text codecolorer">
>           <h:panelGrid*>
>         </div>
>       </td>
>     </tr>
>   </table>
> </div>
> 
> then copy and paste the same template to each page. This is a quick and easy way to develop web pages.
> 
> &#8212; [Creating a Common Look and Feel Using Templating](https://bpcatalog.dev.java.net/nonav/webtier/templating/frames.html)

Great example of code reuse that cut and paste pattern. Isn&#8217;t that in the Gang of 4 Book as a classic pattern? 

From what we heard the solution to most of our problems with JSF was to use [Java Creator Studio 2](http://developers.sun.com/prodtech/javatools/jscreator/). We got a quick demo of it. Nice clickity, click interface, you drag and drop a GUI widget and then link it directly to a database table, and you&#8217;ve got Enterprise Architecture.

As it turns out the most valuable part of the talk was gathering anecdotal evidence. Despite this being the only talk about JSF at the whole conference with 280+ sessions there were only about 30 people there. When she asked how many of us were using JSF only about 10 of us raised our hands. When she asked if people were using Struts virtually the entire room raised their hands.

The JSF story is still frustratingly incomplete.