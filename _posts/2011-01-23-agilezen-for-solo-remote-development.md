---
id: 868
title: AgileZen for Solo Remote Development
date: 2011-01-23T20:55:33+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=868
permalink: /2011/01/23/agilezen-for-solo-remote-development/
categories:
  - project management
  - scrum
  - software development
---
Over the past few months I&#8217;ve been working on some remote projects as a solo developer. Knowing I wanted a light weight tracking tool I took some time to experiment with a few tools and I&#8217;ve recently come to appreciate the lightweight character of [AgileZen](http://agilezen.com/).

Despite many warnings to use the simplest thing that could possibly work, often stickies on the wall or simple index cards, there have always been a number of options to translate these planning/tracking tools to software applications. Despite settling on the power of physical wallboards for collocated teams throughout my career I have looked into using a number of tools for feasibility ultimately deciding none of them worked as well as a cork board and some stickies or index cards. Tactile and visual cards rock.

Some of the tools I&#8217;ve looked at in the past include:

  * [XPlanner](http://edgibbs.com/2005/08/22/pain-with-xplanner-part-ii/) (an very old tool in the space)
  * [Basecamp](http://edgibbs.com/2006/02/27/trying-out-basecamp/)
  * [Excel](http://edgibbs.com/2007/06/15/sprint-backlog-task-boards-versus-spreadsheets/)
  * [Rally](http://www.rallydev.com/)
  * [Scrumworks](http://edgibbs.com/2006/05/08/finally-tried-out-scrumworks/)
  * [Pivotal Tracker](https://www.pivotaltracker.com/)
  * [Trac](http://trac.edgewall.org/)
  * [Mantis](http://www.mantisbt.org/) (a bug tracking tool used for planning)

I never felt any of them where worth the effort to maintain in the end despite many high hopes. I&#8217;m not immune to tool fascination, but I tried to honestly evaluate the worthiness of the given tool. As a manager much of my focus on this was to please stakeholders and other managers with a nice visual report that could be shared via email and web browsers. In my Agile rollouts it turned out that I was ultimately more successful showing off my cork boards and cards. We did maintain an Excel spreadsheet with backlogs as well to meet some documentation standards for PM groups. It was a small compromise I was willing to live with.

My most recent projects presented me with a different challenge. As a solo developer I&#8217;m largely on my own and not sharing the project tasks with anyone else, but I like to have an organized workflow at all times. My home office doesn&#8217;t have much in the way of space for a nice corkboard, and again I wanted to fiddle with tools so I tried a few to see how they might work for me.

A first attempt was with [Pivotal Tracker](http://www.pivotaltracker.com/). I love the things [Pivotal](http://pivotallabs.com/) is doing out there with a focus on TDD/BDD, pair programming and producing high quality code. Pivotal Tracker is a nicely polished tracking tool that largely simulates the idea of a wall board with an emphasis on iterations that contain a set number of story points. It&#8217;s an opinionated piece of software with this and assumes that you are very concerned with ordering of stories based on points and how you pull them into the backlog. After a lot of work trying to understand how it wants me to work I found it not a great fit as a solo developer. It assumes you want to have tracker plan your iterations automatically based on your velocity. In fact they admit that you can change some settings for the current iteration to allow you to drag stories in or out, but it will still automatically plan all the other iterations in the backlog. In the end I might be up for trying it with a non-collocated team, but for a solo developer the overhead was a bit higher than I prefer.

[AgileZen](http://agilezen.com/) was my second attempt. I remember from some old twitter and blog posts that several people had said it was a really nice lightweight tool. I realized arriving at the site they had been acquired by Rally. I&#8217;ve used Rally&#8217;s tools, but for collocated teams I didn&#8217;t really think the overhead of using Rally was worth it. It appears that AgileZen is their attempt to provide a lighter more Kanban style tool. I liked the little bonsai tree on the login and found more to like when I went in and attempted to setup my current project. I watched the short series of screen casts showing how it worked, maybe 5-10 minutes in all. After that I&#8217;ve been very productive without having to dig into any help. The central metaphor is just a digital task board:

<div align="center">
  <img src="http://edgibbs.com/images/zen_board.gif" />
</div>

Agile Zen focuses on the concept of cards and a board with very lightweight workflow. You create a feature or user story and &#8216;hang the card on the wall&#8217;. You then just move the card to progress it from the backlog to started. You can do some customization, but the default workflow was perfect for me as a single developer. It also looks like it works quite well for remote teams and appears to support more options like marking cards as ready or blocked. I&#8217;ve even used the blocked status for a card once where I wanted to run a design idea by a colleague before I continued further on that particular story. And I&#8217;m a sucker for some auto-generated stats, but it has a nice page where it calculates your throughput with a pretty graph. It will take more time to see if the stats actually give me useful feedback, but did I mention they look nice:

<div align="center">
  <img src="http://edgibbs.com/images/zen_performance.gif" />
</div>

Overall the tool feels closer to a digital taskboard than anything else I&#8217;ve experimented with. I&#8217;d still use a physical task board for a collocated team, but for a team working in remote locations or a single developer I think it makes a very good electronic substitute. Now if only it had an iPad version. If you&#8217;re a solo developer feel free to try it yourself as it&#8217;s 1 project is free for a single developer.