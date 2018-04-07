---
id: 537
title: Rands Says Managers Should Develop
date: 2007-03-02T21:00:16+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/03/02/rands-says-managers-should-develop/
permalink: /2007/03/02/rands-says-managers-should-develop/
categories:
  - management
  - software development
---
> Twenty-three hours later the nasty bug is squashed.

Turns out I descended into completing project tasks last week. Generally I get massive pangs of guilt. I know some other management tasks fall by the wayside from that PO I was supposed to fill out for Acrobat to following up with a business manager on a potential new project. On top of that I get emotionally attached to squashing a bug and I typically can&#8217;t let it go. The 23 hour bug spanned out over a couple of days of work and some really late nights.

Rands of [Rands in Repose](http://www.randsinrepose.com/) explains that despite all the enlightened ideas of moving away from the technical work that you just have to stay in the code:

> I&#8217;m not wishing confusion and chaos on your team. I&#8217;m actually wishing better communication on it. My belief is that if you are building the product and touching the features that you&#8217;ll be closer to your team. But, more importantly you&#8217;ll be closer to how software development is constantly changing in your organization.

So I&#8217;m in good company, as based on his blog alone [Rands](http://www.randsinrepose.com/about.html) appears to be a hell of a development manager. He makes four points about what you need to do:

  * Use the development environment to build the product.
  * Be able to draw a detailed architectural diagram describing your product on any white board at any time.
  * Own a feature.
  * Write a test script.

I managed to do all of these suggested items in some form already, I&#8217;m a genius! 

I run two IDEs currently on my work laptop. One by choice and for productivity (IntelliJ IDEA) and one because all of my developers use it (RAD). 

I can whiteboard any of my three big projects right now to some level of detail if asked. The one that I get the architecture least is a 3rd party vendor product and I just need to sit down and actually do some code reading to understand it better. And not knowing it&#8217;s architecture in more detail bothers me.

Owning features, that&#8217;s just crazy. There&#8217;s danger of going overboard here on Rands account, but since my developers are on at least three projects at a time I think owning a feature on each would be pretty much management suicide. The PMs/Scrum Masters on the projects would love it because I&#8217;m a &#8216;free resource&#8217; who isn&#8217;t going to bill time against their project. I do my part though with helping out on the occasional bug, keeping the build box running, participating in a code review and on rare moments owning a bug or feature.

Finally, writing a test script on the build is a specialty. I tend to write the actual ant scripts that run our builds, and I maintain the build box running a copy of [Hudson](https://hudson.dev.java.net/). I also manage our code review tool, and hook in Clover and Checkstyle into our builds. I know the code that&#8217;s getting checked into source control.

I&#8217;m rethinking my little voice that keeps saying, &#8216;don&#8217;t even think about firing up your IDE today, you have 6 meetings to go to.&#8217; Maybe I should finally get around to pairing up with individual developers to go through a TDD exercise for a few hours each, couldn&#8217;t hurt.