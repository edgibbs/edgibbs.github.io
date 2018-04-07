---
id: 371
title: Not Using Protected Keyword
date: 2006-06-12T19:06:37+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=371
permalink: /2006/06/12/not-using-protected-keyword/
categories:
  - jsf
  - software development
  - websphere
---
OK, I admit it I&#8217;m a simpleton when it comes to scoping things in Java. Out of all four possible keywords for scoping access I manage to use two:

  * **public**
  * **private**

I realize there&#8217;s probably a good reason where I&#8217;d want to use **protected** or **default** scope, but I just haven&#8217;t run across one. I find sticking to **private** and **public** simplifies my designs. It is very clear whether the variable or method was supposed to be encapsulated by the class. Since I don&#8217;t do APIs if I need access then it generally might as well be **public**. 

When I do run across a **protected** or **default** in example code I often wonder if there was an explicit reason for it. It turns out that IBM&#8217;s RAD 6.0 writes all its JSF backing bean methods as protected scope, though I still don&#8217;t get why.

Of course I may also just be missing some blindingly obvious OO concept that makes **protected** really cool.