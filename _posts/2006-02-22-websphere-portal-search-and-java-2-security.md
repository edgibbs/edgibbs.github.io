---
id: 277
title: Websphere Portal Search and Java 2 Security
date: 2006-02-22T21:43:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=277
permalink: /2006/02/22/websphere-portal-search-and-java-2-security/
categories:
  - software development
  - websphere
---
We&#8217;ve turned on Java 2 security in our environment. Java 2 security is turned off on every app server by default including Websphere. This little setting caused us quite a few problems as we hadn&#8217;t built any of our applications with this in mind. My anecdotal experiences is that I&#8217;ve never seen it used anywhere, but that is just my experience.

Up until now we&#8217;ve been able to deal with the headaches. A nasty surprise was apparently using RAD and its built in test server you literally can&#8217;t turn it on without breaking your test portal instance. So we don&#8217;t try to run Java 2 Security on our local instances unless we don&#8217;t need portal. Today I learned about a new issue. 

I&#8217;m working on our intranet portal project and I&#8217;ve noticed for a while that search hasn&#8217;t been enabled. As it turns out one of the developers showed me the issue with search. You can go to the admin portal for search to setup the crawler, and it needs to generate a unique URL. The problem appears to be since Java 2 Security is turned on all the generated unique URLs are really long (Possibly some encryption of the URL params?). No problem there except in the admin web page it truncates the URLs since the form field only allows 250 characters. We haven&#8217;t found a workaround yet, but we haven&#8217;t spent too much time digging.

Now I find out the latest version of Websphere Portal, 5.1 only just added Java 2 Security:

> WebSphere Portal v5.1 offers a number of security enhancements and it now supports Java 2 Security. [(link)](http://websphere.sys-con.com/read/47652.htm)

So we have a new question for our IBM lab advocate. Just how many customers of theirs actually enable Java 2 Security in Websphere Portal?