---
id: 176
title: Coding JSF By Hand
date: 2005-11-01T22:21:23+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=176
permalink: /2005/11/01/coding-jsf-by-hand/
categories:
  - jsf
  - software development
---
The default assumption with JSF is that you do drag and drop development in some nice vendor tool. That&#8217;s pretty much the vision our vendor sold us as well, but I&#8217;m beginning to reconsider it. A few recent things have gotten me thinking.

The first two are comments from two JSF thought leaders on how they don&#8217;t use WYSIWYG tools to do JSF:

> This is one of the most common misconceptions about JSF. While there are plenty of good tools (and I generally tell people to use them), using them isn&#8217;t a requirement, and all of them don&#8217;t generate code. I&#8217;ve been working with JSF for quite some time now, and I usually don&#8217;t use WYSIWYG tools or code generation.
> 
> &#8211; [Kito Mann](http://weblogs.java.net/blog/kito75/) from a [TSS Post](http://www.theserverside.com/news/thread.tss?thread_id=37365#189774)

[Rick Hightower](http://www.jroller.com/page/RickHigh) has a similar opinion:

> You can use WYSIWYG tools with Struts or for that matter Swing. No Struts or Swing developer I know uses them. This is the same with JSF. The tools exists, but no developer I know uses them (except maybe to do some prototyping). I can&#8217;t stand the stuff these tools generate. 
> 
> &#8211; Rick Hightower from a [TSS Post](http://www.theserverside.com/news/thread.tss?thread_id=37365#189777) 

This mirrors recent comments from some of my senior developers on how the JSF tools and are driving them crazy with all the generated code. Top that off with my own personal bias against wizard interfaces and their known usability issues and I think we might explore some hand coding and compare the results.