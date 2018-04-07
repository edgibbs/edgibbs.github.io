---
id: 111
title: Adding Projects to Cruisecontrol Day 1
date: 2005-09-22T20:30:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=111
permalink: /2005/09/22/adding-projects-to-cruisecontrol-day-1/
categories:
  - software development
---
Today, I finally got around to sitting down with one of my senior developers and adding all of our current projects into Cruisecontrol. For the last month or so I&#8217;ve only been running one project on the automated build. But I freed up some time today and added our other two projects in about 30 minutes. Both bombed of course. The first one relies on some library the developer thought would be in JBoss&#8217;s library. The second only passes 8 of it&#8217;s 13 unit tests since the 5 are JWebunit tests and rely on the web container being up and running. But the buzz started since the emails are going out now. No one likes failing emails, or maybe I&#8217;m kidding myself and no one likes failing emails when annual reviews are around the corner.