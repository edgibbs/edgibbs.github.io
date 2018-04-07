---
id: 575
title: Give Your Developers IDE Choice
date: 2007-06-23T22:02:33+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/06/23/give-your-developers-ide-choice/
permalink: /2007/06/23/give-your-developers-ide-choice/
categories:
  - automated builds
  - software development
---
I shuddered reading this [post](http://www.boojies.com/2007/06/18/fired-for-using-intellij-idea-instead-of-eclipse/):

> After months of using Eclipse, of being forced to use Eclipse, I decided I just can&rsquo;t continue down this path any longer. Like a burglar in the dead of night, or a drug smuggler on the border, I committed a most sinful and most treacherous act &mdash; I installed IntelliJ IDEA to continue with day to day Java development. In the context of the company I work for, this is tantamount to lying on your resume or sexual harassment. It&rsquo;s big.

IDE choice shouldn&#8217;t be grounds for a disciplinary action. An IDE is just a tool, and for pretty much any java project you can use:

  * Eclipse
  * Netbeans
  * IntelliJ IDEA
  * JDeveloper

Forced standardization might make sense when you say make a decision to use Oracle over SQL Server for the database, but for an IDE you can use any of the above tools with no real additional costs. IntelliJ IDEA does have a nominal $250-$500 cost, but I find that not to be much of a barrier. Some developers including myself regularly switch between IDEs to take advantage of different features or plugins. I spend most of my time in IDEA, but occasionally I drop into IBM&#8217;s Eclipse based RAD. Other developers might jump from Eclipse to Netbeans to do some profiling.

One of the fatal issues that leads to things like forced IDE standardization is when you don&#8217;t have a fully automated build. If you can&#8217;t run ant, maven, or even rake from the command line, no IDE, you&#8217;re dead. This tends to lead to developers who can only build from within the IDE. Next comes &#8216;works on my machine&#8217; problems. Then to further reinforce the bad decision to become completely reliant on an IDE you force all developers to use it all the time.

Automated builds avoid IDE lock-in.

Then there&#8217;s the shops that believe everything must be standardized. Avoid these standardization-happy shops.