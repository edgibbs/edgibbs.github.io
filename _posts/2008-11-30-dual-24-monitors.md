---
id: 688
title: 'Dual 24&#8243; Monitors'
date: 2008-11-30T20:31:06+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=688
permalink: /2008/11/30/dual-24-monitors/
categories:
  - management
  - software development
  - test driven development
---
I&#8217;m working on a justification for capable developer machines including dual 24&#8243; monitors. It occurred to me that I needed a simple test to define the problem.

<pre>def test_two_24_inch_monitors_are_cost_effective
  baseline_productivity = developer.productivity_in_hours_per_year
  developer.add_monitor(24_inch_monitor)
  developer.add_monitor(24_inch_monitor)
  productivity_gain = developer.productivity_in_hours_per_year - baseline_productivity
  assert(productivity_gain * 50_dollars_per_hour &gt; cost_of_two_monitors)
end
</pre>

So with two 24&#8243; monitors running say $800 I need to show just a 16+ hour increase to justify the increased productivity in a single year. To make the math easy with say 1600 hours available a year, we&#8217;re talking about just a 1% productivity gain. Given a [recent study](http://www.reuters.com/article/pressRelease/idUS123894+13-Mar-2008+BW20080313) showing 20%+ gains this should be an easy test to turn green.