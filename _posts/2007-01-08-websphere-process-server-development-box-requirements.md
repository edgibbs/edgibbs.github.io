---
id: 506
title: Websphere Process Server Development Box Requirements
date: 2007-01-08T23:48:43+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/01/08/websphere-process-server-development-box-requirements/
permalink: /2007/01/08/websphere-process-server-development-box-requirements/
categories:
  - software development
  - websphere
---
As a Websphere shop we acquired licenses to IBM&#8217;s nascent ESB product, Websphere Process Server about a year ago. Since that time only one developer at the company, our architect, has been able to successfully develop anything with it. 

The partial secret to getting it up and running successfully was revealed to me recently. Another developer kept asking our architect if he was getting a number of random crashes, constant slowdowns, and was unable to run even an email client and Process Server/WID on his machine. Turns out our architect never runs it on his main machine. He has a dedicated box with 4GB of RAM that only runs Process Server. Mystery resolved. Maybe when we get to refresh our dev boxes we might actually be capable of running Process Server successfully.