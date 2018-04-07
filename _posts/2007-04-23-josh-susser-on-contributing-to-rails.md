---
id: 556
title: Josh Susser on Contributing to Rails
date: 2007-04-23T21:27:01+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/04/23/josh-susser-on-contributing-to-rails/
permalink: /2007/04/23/josh-susser-on-contributing-to-rails/
categories:
  - conferences
  - ruby
  - software development
---
[Josh Susser](http://blog.hasmanythrough.com/) gave a pointed talk on how you can contribute to Rails, or really any other open source project for that matter.

**Why Contribute?**

Maybe there&#8217;s the guilt associated with the freeloader effect that drives you to contribute. Guilt is never the strongest motivation though. Better motivations include getting some measure of control over a piece of software. You can fix your own bugs and contribute patches. Finally, the cool reason&#8211;cred. With credibility people start listening to you and eventually you get things like book offers and job offers.

**Where to Start**

  * Start with the [Trac site](http://dev.rubyonrails.org) for rails.
  * Follow the rails core discussion [list](http://groups.google.com/group/rubyonrails-core/). 
  * Documentation is a great place to start.
  * Tests, more tests are always needed.
  * You can write a test around a bug and submit it. Maybe someone else will write the code to fix it.
  * Then you can always write code.

  * New code is glamourous, but not the best starting point.
  * Better to start with bug fixes.
  * Move on to plugins, generators, tasks, etc.
  * Maybe then an enhancement.

**The How**

Start with setting up a rails development environment. Then pull down rails from the trunk:

<pre>$ svn co "http://svn.rubyonrails.org/rails/trunk" rails</pre>

Next setup the test database for ActiveRecord and possibly others and read RUNNING\_UNIT\_TESTS. Run tests before any changes. Then run tests after every change. Start writing tests first. The tests in rails could do with a lot of refactoring, and Josh mentioned there was a good opportunity for contribution there. Remember to follow the Rails style guidelines. Then document what you do with RDoc and inline comments. Again, tests must pass and docs must build.

**The Patch**

  * Generate the patch file
<pre>$ svn diff &gt; well_named_patch.diff</pre>

  * Look at the diff file in TextMate or some IDE. There should probably be a lot more test code and documentation then actual application code in the diff file.
  * Open a [ticket](http://dev.rubyonrails.org/newticket) on the trac site.
  * Start the summary with [PATCH].
  * Upload the diff file, don&#8217;t paste it.
  * Describe problem and solution, show usage.
  * Use Keywords: doc, test, tiny

  * doc &#8211; patches that are just documentation
  * test &#8211; patches that are just test
  * tiny &#8211; small changes, probably only one file

  * Then practice being patient.
  * Lots of patches are sitting in Rails Trac for a long time.
  * Smaller changes are easier to get accepted.
  * Use tiny keyword.
  * If you have a big patch, discuss on rails-core list first. Try out patch as plug-n it makes it easy to check the stability.

**Other Things You Can Do**

  * Room for lots of different types of contributions. Can do some grooming on the wiki.
  * Respond to updates to your ticket.
  * Check the rails irc channel at #rubyonrails at irc.freenode.net
  * Keep a blog. Everyone who contributes has a blog of some sort.
  * Look at open bugs if you don&#8217;t have anything you want to change in rails right now.

The talk finished up with some questions. One attendee mentioned that in their shop they have new developers just cruise through rails and contribute patches for the first month or two before they really put them on projects, so they can get really familiar with rails and help out at the same time. And Josh explained that PDI (Please Do Investigate) is not a brush off from the core team. Instead it&#8217;s a small compliment that someone thinks it&#8217;s interesting, and please go make it happen.