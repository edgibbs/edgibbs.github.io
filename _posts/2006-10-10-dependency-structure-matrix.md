---
id: 457
title: Dependency Structure Matrix
date: 2006-10-10T21:58:12+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=457
permalink: /2006/10/10/dependency-structure-matrix/
categories:
  - automated builds
  - software development
---
Popped over to our local Java Users Group (JUG) meeting to hear a talk on Dependency Structure Matrix also known as Design Structure Matrix by a company called [Lattix](http://www.lattix.com/dl/gettingstarted.html). Never heard of it, well neither have I.

The basic idea is it statically analyzes your project and maps dependencies between layers, or more accurately between packages. You can go in and define those layers and work with its simple model to sort of refactor the coupling out of your application. You can also add rules on what coupling is allowed and then run a quick report to see the exceptions. On top of that you can add rules around dependencies on external packages such that the only the DAO layer can use Hibernate packages for example.

Nice to see these sorts of developments as this can be added to your build process as another check, and it makes visible the dangers of coupling unrelated layers. Better to catch coupling early rather than later. The cost is <del>$500</del> $495 for 500 classes or less, <del>$1000</del> <ins>$695</ins> for 1000 classes, and $3000 for the typical unlimited Enterprise license. I may add it to my todo list for looking into tools at some point. The only other tool that seems to do something like this that I was aware of before was Mike Clark&#8217;s [JDepend](http://clarkware.com/software/JDepend.html#uses), but I never had time to look into it much.