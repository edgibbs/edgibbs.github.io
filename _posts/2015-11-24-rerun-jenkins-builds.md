---
id: 1079
title: Rerun Jenkins Builds
date: 2015-11-24T16:59:11+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1079
permalink: /2015/11/24/rerun-jenkins-builds/
categories:
  - automated builds
  - software development
---
Some consultants at our office needed to be able to roll back a Jenkins project that deployed to staging and production sites in case of an issue. The project had been setup to allow for a typical git checkout and then ended up using a php build tool, phing, to essentially rsync up to the servers.

Turns out &#8216;Parameterized Builds&#8217; was able to resolve this. It took just a few steps:

  * Click &#8216;Configure&#8217; on the project.
  * 
  * Check &#8216;This build is parameterized&#8217;.
  * Add a String Parameter with the name GIT_COMMIT and a default of &#8216;master&#8217;
  * Under Git > Branches to build, add the parameter as $GIT_COMMIT
  * Save

This allows you to specify the commit SHA for each release. If you need to roll back you just run it with the specified commit SHA. This can be configured to use git tags as well. Inspiration of this came from this [post](http://blog.ramanshalupau.com/parameterized-jenkins-build-for-rollback-purposes).