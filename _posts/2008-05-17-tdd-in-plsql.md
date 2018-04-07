---
id: 658
title: TDD in PL/SQL
date: 2008-05-17T20:04:53+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/05/17/tdd-in-plsql/
permalink: /2008/05/17/tdd-in-plsql/
categories:
  - software development
  - test driven development
---
<div align="center">
  <img src="/images/oracle_headquarters.jpg" />
</div>

PL/SQL has unit testing support and tooling, but my sense is that it&#8217;s far from the world of Java or Ruby. In most modern OO languages unit testing is just a part of the landscape. TDD is evolving to BDD with tools like RSpec and modern web frameworks come with unit testing support built in from Wicket to Rails.

It&#8217;s a little different in the Oracle world. [Steve Feuerstein](http://www.toadworld.com/Knowledge/DatabaseKnowledge/StevenFeuersteinsPLSQLObsession/tabid/153/Default.aspx) the evangelist for TDD and unit testing in PL/SQL mentions:

> utPLSQL is used by many development shops, but not nearly enough to make it a standard in the PL/SQL environment.

The difference is JUnit is a defacto standard in the Java world. Steve developed utPLSQL to allow for automated unit testing in PL/SQL and has been pushing the idea ever since.

[utPLSQL](http://utplsql.sourceforge.net/) is a basic xUnit framework with assertions, setup and teardown. The interface is simple with [no red/green bars](http://www.java-community.de/archives/56-Unit-testing-in-Oracle-PLSQL.html) just a &#8216;success&#8217; message in ASCII art. There is a GUI front end runner called [OUnit](http://www.ounit.com/), but it hasn&#8217;t been updated in quite some time. The current leading edge unit testing tool is a commercial offering from TOAD called [Quest Code Tester](http://www.quest.com/code-tester-for-oracle/) for Oracle.

Steve Feuerstein is the developer behind the tool. At first glance it looks like a nice option especially since we&#8217;re a TOAD shop. I&#8217;ll probably delegate it out to one of our developers to really look into it. The questions I still have are:

  * Write a failing test. Write the code to make it pass. Refactor. How painful is manual refactoring in a procedural language?
  * How do you hook up the test runs to a continuous integration server? And are you tied to the TOAD tool?
  * How do you deal with all the actual dependencies on data in tables for tests.
  * How do you avoid slow running tests?