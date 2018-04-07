---
id: 918
title: Cardboard Boxes and Modern Web Frameworks
date: 2011-08-07T06:29:24+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=918
permalink: /2011/08/07/cardboard-boxes-and-modern-web-frameworks/
categories:
  - groovy
  - ruby
  - software development
---
My daughter spent an hour the other day cutting holes, drawing red bricks, and pasting grass along the bottom of a simple cardboard box. It&#8217;s a common story among parents, especially of small children that despite spending a lot of money on a gift, the kid ends up enjoying the box and ignoring the toy.

I&#8217;ve noticed a common quality of many newer web frameworks is that they provide you with a nice box to build from. Typically:

  * A default structure so you know where to find the models, views, controllers, extra libraries, etc.
  * A command line for generating stubs, running tests, and deploying.
  * A plugin system for easily adding functionality from swapping out javascript libraries to adding a security system.

Though there are probably others I&#8217;m aware of this model being used by Spring Roo, the Play Framework, Gryphon, Grails, and Rails. I don&#8217;t claim to be a historian on this, but Rails was my first experience with this style and I assume to be the originator of the approach. 

The benefits of this approach are obvious from the first time you start off with a Hello World tutorial. For one you generally have a single download for the framework. After unpacking you&#8217;re able to use the command line to generate your Hello World controller, find the view in a predefined location, add the Hello World line, and fire up the application from the command line. Passing the 5 minute test is pretty important if you expect developers to give your framework a chance. 

As a consultant working on numerous legacy code projects, there&#8217;s always the groan moment when you start looking into the code and you realize its non-obvious where to find things. I&#8217;ve seen libraries sprinkled about at random, key configuration files that were supposed to be moved into the users home directory, model classes mixed in with controllers, and a host of other inconsistencies. With a framework that reinforces the default structures it becomes easy to find things and much easier for plugin-authors to write plug-ins that make the framework much more valuable.

Finally, the plugin system is a critical part of new frameworks. Being able to add security framework on the fly, swap out your testing framework, or simply add in a nicer date library really starts to make things feel like magic. Indeed among these frameworks they are starting to push more and more modularity into the plugin systems to allow for the framework to evolve better over time.

I hope this trend continues in the world of web frameworks, as I really like a nice box to start a project from.