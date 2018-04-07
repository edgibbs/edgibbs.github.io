---
id: 30
title: Launching a Development Architecture Team
date: 2005-07-09T21:45:00+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=30
permalink: /2005/07/09/launching-a-development-architecture-team/
categories:
  - software development
---
After initially holding some development architecture decisions close to the vest with myself and the other web development manager, we decided to open up the process a bit to the senior developers on our teams. It&#8217;s an experiment of course so we&#8217;ll see how it goes.

The great benefit of opening it up is that you get a lot more perspectives and ideas. Just having the meeting opened up some surprises. It turns out after discussing what our default persistence layer framework and mentioning that we&#8217;re currently using [iBatis](http://ibatis.apache.org/) by default but we&#8217;re looking at [Hibernate](http://www.hibernate.org/) or even EJB 3.0 that one of our senior developers have already put Hibernate into a module of a working product. After a discussion of source control options between CVS, Subversion, or Rational ClearCase we decided to stick with CVS for now and start exploring Subversion. Of course we also learned that at least one of the developer&#8217;s had already done some initial research and played with the Eclipse plugin.

The disadvantage is instead of coming to a consencus between one or two people, know we have to achieve concensus among six or more. Technical types can get pretty religious about things, but I think we have a pretty reasonable bunch so we&#8217;ll just have to see. We&#8217;ll be meeting every two weeks or so.