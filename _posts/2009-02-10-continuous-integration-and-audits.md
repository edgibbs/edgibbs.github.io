---
id: 708
title: Continuous Integration and Audits
date: 2009-02-10T23:40:17+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=708
permalink: /2009/02/10/continuous-integration-and-audits/
categories:
  - automated builds
  - software development
  - test driven development
---
<div align="center">
  <img src="/images/hudson_screen.png" />
</div>

Audits are easy to pass. You have a documented process. You have a pile of documentation that shows that you followed the process. An auditor independently validates the documentation. Much like running your suite of tests on a CI server.

In an average IT shop you may even have audits of your software process. Recently I used our CI server to help streamline the audit process. We actually had a formal document for unit test plans and unit test results. I value the idea behind the documents, but I don&#8217;t know that filling out the Word template was going to accomplish much beyond passing an audit finding. 

Upon a request I simply sent a URL over to the PM on the project. It just pointed to that particular project&#8217;s JUnit test case reports. That URL should be constant through the life of the project. Now you have documented real time evidence that unit tests are being written and executed. Your CI server can make life easier for auditors.