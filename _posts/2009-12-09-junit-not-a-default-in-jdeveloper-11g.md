---
id: 778
title: JUnit Not a Default In JDeveloper 11g
date: 2009-12-09T20:09:41+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=778
permalink: /2009/12/09/junit-not-a-default-in-jdeveloper-11g/
categories:
  - software development
  - test driven development
---
It&#8217;s almost 2010 and JUnit runners are still an optional download for Oracle JDeveloper 11g. JDeveloper is a reasonable IDE and it&#8217;s improved over the years. It has most of the basic features an Eclipse or IntelliJ IDEA user would expect including plenty of refactoring support.

Leaving out JUnit integration was unfortunate. My assumption is JDeveloper is used primarily in shops that are heavily Oracle based and usually with developers who are coming out of a PL/SQL background. Many of them may have done years of Oracle Forms and Reports. PL/SQL has utPLSQL, but it&#8217;s never caught on as default tool as you&#8217;d see in Java or Ruby.

The introduction to current practices like unit testing, refactoring, continuous integration, and static analysis are critical for shops that are just now moving into regular java development. As far as I can remember the JUnit support has been a standard part of Eclipse for 8 years or more and similarly for IntelliJ. Sometimes you run into organizations that are very comfortable with their software vendors warts and all. When you leave out basic unit testing integration as an optional plugin that you have to go out of your way to install you&#8217;re sending a clear message. Unit testing isn&#8217;t that important, you could probably just skip right past it. Even Visual Studio 2008 fully integrated unit testing and MS has been late to the party as it is.

A quick word of advice, for users of JDeveloper, the unit testing plugin isn&#8217;t really optional. Just consider the extra steps to download it part of the install process.