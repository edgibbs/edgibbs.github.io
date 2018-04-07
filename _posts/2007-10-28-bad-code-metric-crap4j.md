---
id: 627
title: 'Bad Code Metric &#8211; Crap4J'
date: 2007-10-28T20:56:53+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/10/28/bad-code-metric-crap4j/
permalink: /2007/10/28/bad-code-metric-crap4j/
categories:
  - conferences
  - test driven development
---
A single number representing whether you&#8217;re six months worth of coding is actually not crap. Not code coverage, Checkstyle warnings or defects per thousand lines of code but a single score.

<img src="http://edgibbs.com/images/crap4j.png" alt="crap4j.png" border="0" width="333" height="160" />

[Alberto Savio](http://www.artima.com/weblogs/index.jsp?blogger=agitator) of [Agitar Software](http://www.agitar.com/) presented on his new [Crap4J](http://www.crap4j.org/) tool at an [Agile Open California](http://www.agileopencalifornia.com/) session this week. Crap4J produces a single number defined by the following equation:

<pre>CRAP(m) = comp(m)^2 (1 - cov(m)/100)^3 + comp(m)<br />
m = method
comp(m) = Cyclometric complexity of method m.
cov(m) = Test code coverage for method m.
</pre>

In written terms:

> **Complexity bad. Tests good.**

Right now there&#8217;s just an Eclipse [plugin](http://www.crap4j.org/downloads/index.html) to try it out. Anything with a Crap number of 30 or above is a crappy method. And any project with more than 5% crappy methods is a crappy project. Alberto explained they wanted it to be an Agile metric so that it actually got used out there and part of that was keeping it simple. The other factor is it can easily be adjusted based on feedback and running it against many codebases.

What if you have a CRAP codebase? You can attempt to game the number to bring down the number of crappy methods. And how do you do that? You just write more tests against the high CRAP methods. And then it starts to occur to you that you could refactor as well. Gaming the system is writing tests plus refactoring. You can focus on a single number and encourage good behavior.