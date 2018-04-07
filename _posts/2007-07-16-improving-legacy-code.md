---
id: 595
title: Improving Legacy Code
date: 2007-07-16T21:29:34+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/16/improving-legacy-code/
permalink: /2007/07/16/improving-legacy-code/
categories:
  - software development
---
> I just really feel like I should do some cleaning up while I&#8217;m in there changing the code.
> 
> &#8212; A Developer Working on a Legacy Code Base

The rewards of management can take a long time to recognize, but I heard this gem a while back. The developer was bothered by the state of the legacy code he was working with and really wanted to do some cleanup. Usual issue&#8211;almost no tests in place, plenty of nasty EJB dependencies and hard to test. For now he&#8217;s doing simple refactorings like renaming variables, extracting methods, and just deleting old commented out code.

It can take a while to convince a developer that it&#8217;s worth the effort to do some cleanup when working with legacy code. Many times it seems overwhelming to bother with changes. It&#8217;s a mess and not worth fixing. Then they reach the point where they&#8217;re not willing to just deal with patching up the problem. Every time they touch the code they make small improvements. This is how you wrangle in a nasty legacy codebase and make it workable and maintainable for the long haul.