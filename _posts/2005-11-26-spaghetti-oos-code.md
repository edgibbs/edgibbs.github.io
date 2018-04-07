---
id: 200
title: Spaghetti OOs Code
date: 2005-11-26T23:33:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=200
permalink: /2005/11/26/spaghetti-oos-code/
categories:
  - software development
  - test driven development
---
<img src="/images/spaghetti_os.jpg" align="right" hspace="3" />
  
Had an interesting discussion with my brother this morning. He happens to be yet another software developer in the family. Out of five brothers four of us ended up in programming. Probably related to our Dad&#8217;s early experiments with kit computers like our first [Interact](http://oldcomputers.net/interact.html) in 1979.

Anyway he sees the world a little differently and he&#8217;s working on studying up for the [IEEE Software Developer Certification](http://www.computer.org/portal/site/ieeecs/menuitem.c5efb9b8ade9096b8a9ca0108bcd45f3/index.jsp?&pName=ieeecs_level1&path=ieeecs/education/certification&file=index.xml&xsl=generic.xsl&). He brought up this idea of preferring 100-200 line methods or functions that can be followed fairly easy. The idea of having a more object oriented approach with lots of small objects and simple responsibilities he referred to as Spaghetti OO&#8217;s code. He finds it quite difficult to follow the logic in such code because it&#8217;s always jumping around and you end up having to know too much about the design up front. 

I can&#8217;t say a particularly agree with him on this one, but it does capture a sense I get in digging into some large OO code bases where I have trouble finding my way. You know the kind where if you tried to draw out an end to end slice through the system you&#8217;d end up with a sequence diagram that circled around the room. The point being is you can still get really convoluted with any approach. These days I only have one hard and fast rule for any of my code or any of my developer&#8217;s code:

  * **Can I unit test it.**

If I need to sacrifice a little OO purity, I&#8217;m OK with that. And I&#8217;m still far from being some OO god, so I probably pull some procedural hacks without even realizing it. Heck, I still think Struts is a reasonable web framework given the current options, and it has a pretty solid procedural feel to it.