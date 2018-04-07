---
id: 320
title: Null Object Pattern For Avoiding Null Checks
date: 2006-04-09T21:36:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=320
permalink: /2006/04/09/null-object-pattern-for-avoiding-null-checks/
categories:
  - software development
---
I&#8217;ve had it on my todo list for a while to go ahead and look into the Null Object pattern. I vaguely recalled that it allowed you to return a null object and not have to actually test for things like:

<pre>if (employee != null && employee.isCurrent()) {
	employee.promoteOneLevel();
}
</pre>

I see this all through a lot of java code to avoid the dreaded NullPointerExceptions (NPE). If a Null Object can clean up this sort of thing I&#8217;m all for it.

Essentially the trick is to implement a do nothing class like NullEmployee that implements the Employee interface, but all of its methods do nothing. In the case of isCurrent() in Employee, you just have the NullEmployee.isCurrent() method always return false. Pretty simple really.

I&#8217;m glossing over the details really and I need to spend a bit of time doing some more implementations. You can find more about it by [Bobby Woolf](http://web.comlab.ox.ac.uk/oucl/work/jeremy.gibbons/dpa/nullobject.pdf), [Martin Fowler](www), and [Joshua Kerievsky](http://today.java.net/today/2004/12/10/refactor.pdf).