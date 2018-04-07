---
id: 413
title: Horizontal Security
date: 2006-08-08T22:18:42+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=413
permalink: /2006/08/08/horizontal-security/
categories:
  - code reviews
  - software development
---
In a talk tonight at the [SACJUG](http://www.sacjug.org/) meeting Roman Hustad of [Foundstone](http://www.foundstone.com/) talked about a number of issues in writing more secure code. Luckily he comes from a coding background so much of the advice was a lot more relevant than the typical network security perspectives.

Foundstone has developed a couple of example applications to illustrate bad coding practices which include [Hacme Books](http://www.foundstone.com/index.htm?subnav=education/navigation.htm&subcontent=/education/handson.htm). He covered ideas like testing fields with a single quote character to test for SQL injection possibilities and something called a horizontal privilege attack. That&#8217;s an attack based upon gaining access to other users accounts with the same permission level so that you can steal there information or use their account. You might do this with a badly coded web application by simply changing the value of a user id URL parameter.

He mentioned two relatively recent texts on how to apply better security practices within a software development lifecycle. And both of the suggested books included ways to deal with it on an Agile project:

  * [The Security Development Lifecycle](http://www.microsoft.com/MSPress/books/8753.asp)
  * [Software Security: Building Security In](http://www.awprofessional.com/bookstore/product.asp?isbn=0321356705&rl=1)

Overall a good introductory talk by a practitioner. One of his main points was that security was becoming something that you needed a few developers that specialized in so that you could keep a team up to speed on the newest techniques. Trying to make everyone a security expert just isn&#8217;t going to happen. And finally, a last point was that code reviews are a great place to inject secure software practices.