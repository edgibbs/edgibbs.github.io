---
id: 219
title: Superplatforms are Simple, Rebel Platforms are Hard
date: 2005-12-19T19:57:38+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=219
permalink: /2005/12/19/superplatforms-are-simple-rebel-platforms-are-hard/
categories:
  - software development
---
I listened to [Richard Monson-Haefel&#8217;s](http://www.monson-haefel.com/) recent [podcast](http://www.itconversations.com/shows/detail684.html) for the Burton Group on rebel platforms. The most shocking statement follows:

> If they [your developers] value simplicity you probably want to go with a super platform. 

According to the [Burton Group](http://www.burtongroup.com/):

  * Super Platforms are: IBM, BEA, SAP, and Microsoft
  * Rebel Platforms are things like: Hibernate, Spring, Struts, and Tomcat and LAMP.

Of course I really thought much of the J2EE community had come to &#8216;rebel&#8217; platforms because the wonderful vendor driven EJB model was too heavyweight and complex. Entity beans are pretty much dead on arrival these days. And we&#8217;ve been dealing with Websphere for 6 months now only to constantly reminded how complex it is. Everything from handling class loaders, to logging problems with RAD make it significantly more complex and troublesome then anything from the open source J2EE community. Case in point we ran complex applications on JBoss up until now with relatively few issues.

Amazingly enough Monson-Haefel points out how much better the support you get with a super platform including things like documentation. Lets compare IBM&#8217;s documentation to say Hibernate or Spring.

IBM believes in Redbooks, which are a strange mixture of documentation and marketing. They have a few books they haven&#8217;t written themselves on the market, but they&#8217;re mostly not exactly hot sellers. Then if you go digging in their developerworks site you can sometimes find something relevant. On the other hand Hibernate and Spring both have multiple fairly popular independent books put out by multiple technical presses. They also have a huge amount of documentation to be found online since these are popular frameworks, that many developers actually use. I&#8217;d pick a popular open source for better documentation every time.

Monson-Haefel also seems to presuppose that you need &#8216;better&#8217; developers to handle the rebel platforms and that the super platforms are more drag and drop, model driven, trained monkey, kind of development. Unfortunately all our recent anecdotal evidence has pointed to the opposite conclusion, that even our brightest developers find themselves spending tons of time dealing with configuration instead of coding, and that the drag and drop stuff generally sets you up for some pretty crappy code. And how many times are we going to be pointed to the just out of reach holy grail of model driven development where you hardly need a programmer.

I&#8217;ll take the simplicity of a rebel platform any day over the complexity and constraints of an enterprise super platform. I can see why this podcast was the [lowest rated](http://www.rds.com/blogs/doug/index.php/archives/2005/12/18/itc-news-december-18-2005/) of the week for IT Conversations.