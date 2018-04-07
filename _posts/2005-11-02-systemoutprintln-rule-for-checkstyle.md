---
id: 177
title: System.out.println() Rule for Checkstyle
date: 2005-11-02T22:21:46+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=177
permalink: /2005/11/02/systemoutprintln-rule-for-checkstyle/
categories:
  - automated builds
  - code reviews
  - software development
---
I got around to a long ignored todo today over lunch at my desk&#8211;adding [checkstyle](http://checkstyle.sourceforge.net/index.html) to our [cruisecontrol](http://cruisecontrol.sourceforge.net/) builds. It took about 1.5 hours mostly because the default rules in sun_checks.xml are a bit too extreme and have to be commented back into some state of reason. My favorite custom rule was the [following example](http://checkstyle.sourceforge.net/config_misc.html#GenericIllegalRegexp) in the checkstyle documentation:

<pre>&lt;module name="GenericIllegalRegexp"&gt;
      &lt;!-- . matches any character, so we need to
         escape it and use \. to match dots. --&gt;
      &lt;property name="format" value="System\.out\.println"/&gt;
&lt;/module&gt;
</pre>

No more System.out.println() for us. Currently we probably won&#8217;t fail any project for having violations, but it will help reinforce our newly adopted code reviews.