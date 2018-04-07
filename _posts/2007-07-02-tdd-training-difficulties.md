---
id: 578
title: TDD Training Difficulties
date: 2007-07-02T04:44:04+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/02/tdd-training-difficulties/
permalink: /2007/07/02/tdd-training-difficulties/
categories:
  - jsf
  - software development
  - test driven development
---
[Brian Marrick](http://www.exampler.com/blog/) explains the [difficulties](http://www.exampler.com/blog/2007/06/26/a-workbook-for-practicing-test-driven-design-draft/) in trying to convince developers of TDD goodness. His first approach is to dive into some of their existing code:

> This works maybe a quarter of the time. When it does, it&rsquo;s the best: it shows the watchers exactly what they&rsquo;ll be doing. The usual reason it fails is that the code wasn&rsquo;t written test-first, so it&rsquo;s hard to do anything without instantiating eighteen gazillion objects. A team has to learn to deal with that eventually, but dealing with it as the very first thing really drains the appeal out of an introduction.

Next he tries just starting over showing how the application could have been developed test-first:

> I don&rsquo;t know about you, but when I&rsquo;m starting to build a new app, I often spend a lot of time thrashing around, trying to find a good working division of responsibilities into classes. Eventually things settle down to the point where adding new features isn&rsquo;t an Adventure in Reconceptualizing, but instead becomes what it should be: fairly straightforward. I&rsquo;ve gotten more-or-less used to the turmoil (though I still wish I were smarter or more experienced). The problem is that it makes me look like a complete idiot to watchers. Worse: they may not blame me. They may blame the technique, decide it&rsquo;s stupid.

And the other issue is:

> They look at how much we&rsquo;ve accomplished in an hour or two, extrapolate that to the size of the existing code base, realize they have a long slog ahead of them, and turn off emotionally because they were hoping for some quick ladder out of a hole years in the digging.

My own approaches have yielded similar results. Last time I ran a one day training seminar on TDD I used Bob Martin&#8217;s [bowling kata](http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata) as the central TDD example and some smaller lab examples. For a few people this was compelling, but for many it was, &#8220;How does this apply to me day to day writing DAOs, JSF, and portlets?&#8221;

I backed that up on my team with a simple requirement. You will write tests and the coverage on your project should be at least 70-80%. I didn&#8217;t enforce test-first, but I strongly encouraged it. Over time this worked on my team. Across the other two development groups it was only partially successful.

My current approach is to write up a seminar with labs on doing TDD with JSF which is the point I hear most cited by my staff as the difficult part of doing TDD. Many of them are quickly lured into constant checking that their JSF backing beans do something in a browser. Unfortunately doing TDD with JSF is a bit painful so I haven&#8217;t completed that exercise yet.

For many developers dealing with frameworks not designed around being testable just adds too much of a burden to adopting the TDD practice. The rule now is newer frameworks tend to have testing backed because open source developers are generally fans of TDD. Ruby on Rails is a prime example and Wicket and Tapestry in java even has a built in test packages.

Time and commitment have worked well in my shop. Giving people the time to get comfortable and understand the benefits of TDD while gently prodding them all along the way has worked even if it took more than a year to accomplish. As more frameworks, libraries, and applications are built test-first by default&#8211;developers will start practicing TDD by default.