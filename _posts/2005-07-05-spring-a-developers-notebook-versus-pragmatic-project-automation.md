---
id: 27
title: 'Spring: A Developer&#8217;s Notebook versus Pragmatic Project Automation'
date: 2005-07-05T22:34:31+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=27
permalink: /2005/07/05/spring-a-developers-notebook-versus-pragmatic-project-automation/
categories:
  - software development
---
Having spent most of my spare development time the last few weeks playing/setting up my new 12&#8243; iBook or revamping my blog with a move from pMachine to WordPress I&#8217;m getting back to investigating Spring. 

I really want to enjoy exploring Spring, but the experience has been less then pleasant with [Spring: A Developer&#8217;s Notebook](http://www.oreilly.com/catalog/springadn/). Generally I really enjoy O&#8217;Reilly&#8217;s quality with titles and after a pleasant experience marching through the [Hibernate Developer&#8217;s Notebook](http://www.oreilly.com/catalog/hibernate/), I figured the experience would be really pleasant. After about 10+ hours over several days back in early June I&#8217;m still fighting to finish up the exercises in the second chapter only 32 pages into the book.

Of course you can write me off as the village idiot, but the thing that&#8217;s really slowed me down the entire time is the huge amount of typos and missing context items that continue making working through the exercises difficult. My syntax errors are frustrating enough without the added problems of lots of errors in the book. I found at least two extra problems for the erratta in the first chapter and this is on top of the current list of errata. The typos are really annoying but a little more understandable for a first printing. The omissions of important items like which spring jars you might need to import are just painful. Things like the following: 

  * By page 7 there&#8217;s a class described with no methods. Hunting through the [errata](http://www.oreilly.com/catalog/springadn/errata/springadn.confirmed) you find out its supposed to have a constructor and a get and set method. Since I don&#8217;t assume to look at the [errata](http://www.oreilly.com/catalog/springadn/errata/springadn.confirmed) first I wasted some time here.
  * Then the examples won&#8217;t work still in the first chapter and again it&#8217;s off to the [errata](http://www.oreilly.com/catalog/springadn/errata/springadn.confirmed) page which I know have bookmarked. After checking the [errata](http://www.oreilly.com/catalog/springadn/errata/springadn.confirmed) I find the authors forgot to mention you needed to import spring.jar, commons-logging.jar, and log4j-1.2.9.jar.
  * By chapter 2 we&#8217;re talking about an example file include.jsp, but we forget to actually print out the source code. Luckily that was resolved by downloading some of the example code to find it.

I don&#8217;t want to spend my time debugging example code, I want to understand what Spring is bringing to the table. To add insult to injury I submitted two bugs to the [errata](http://www.oreilly.com/catalog/springadn/errata/springadn.confirmed) list. They have yet to be acknowledged after 4+ weeks and for some reason they aren&#8217;t automatically added to the [&#8216;Unconfirmed Error Report List&#8217;](http://www.oreilly.com/catalog/springadn/errata/springadn.unconfirmed).

I&#8217;m stubborn or I&#8217;d probably just put the book down in favor of [Spring in Action](http://www.manning.com/books/walls2) or [Pro Spring](http://www.apress.com/book/bookDisplay.html?bID=405), because I only have so much time to devote to reading technical books. What I was hoping for was the experience I had with [Pragmatic Project Automation](http://www.oreilly.com/catalog/0974514039/). After a few hours over two days I had CruiseControl up and running and configured with a sample project and running email warnings and the like. Mike Clark&#8217;s examples just work.