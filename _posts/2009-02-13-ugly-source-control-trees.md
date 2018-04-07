---
id: 714
title: Ugly Source Control Trees
date: 2009-02-13T23:26:23+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=714
permalink: /2009/02/13/ugly-source-control-trees/
categories:
  - software development
---
<div align="center">
  <img src="/images/ugly_tree.jpg" />
</div>

My best experience with source control trees have been in shops that didn&#8217;t have them to start with. At that point you have a blank slate and you can do a reasonable job of organization. The ones where they used to have VSS and migrated into CVS and then Clearcase are generally just a mess. You have a lot of historical junk that&#8217;s poorly organized.

My current situation is messy:

  * The first source control system was VSS. Unfortunately a few projects are still stored there as there was not a wholesale migration.
  * Perforce was brought in next, but largely the organization was organic instead of organized. Despite being a commercial solution I&#8217;ve actually found Perforce to be a reasonable source control system.
  * Despite being deployed on a UNIX box many of the directories including top level directories include spaces. This causes a nasty issue with the [Perforce plugin](http://wiki.hudson-ci.org/display/HUDSON/Perforce+Plugin) for Hudson where you can&#8217;t use the plugin because it refuses to escape a directory with spaces correctly.

Our eventual solution is to migrate to subversion or maybe even git. Unfortunately we have to live with the current pain for now.