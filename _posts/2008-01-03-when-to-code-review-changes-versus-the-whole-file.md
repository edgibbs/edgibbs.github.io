---
id: 643
title: When To Code Review Changes Versus the Whole File
date: 2008-01-03T22:14:15+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/01/03/when-to-code-review-changes-versus-the-whole-file/
permalink: /2008/01/03/when-to-code-review-changes-versus-the-whole-file/
categories:
  - code reviews
  - software development
---
<div>
  <img src="http://edgibbs.com/images/magnifying_glass.jpg" alt="magnifying_glass" border="0" />
</div>

Reading through some old documentation today written up a few years ago by our Agile coach I came across a suggested rule of thumb for code reviews:

  * If more than X lines of code changed in a file then do a full code review of the file.
  * If less than X lines of code changed you can just review the diffs.
  * Developers should decide on where to set the bar for lines of code.

Strikes me as a pretty reasonable option. We&#8217;ve been reviewing whole classes except in a few circumstances, but we never set a rule on how many lines of code make it worth doing a full review. Maybe 20 lines is a good number.