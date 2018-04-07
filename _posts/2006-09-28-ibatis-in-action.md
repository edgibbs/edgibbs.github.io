---
id: 451
title: iBATIS In Action
date: 2006-09-28T04:11:17+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=451
permalink: /2006/09/28/ibatis-in-action/
categories:
  - software development
---
[iBATIS](http://ibatis.apache.org/), the SQL based ORM will finally be getting a [book length](http://www.manning.com/begin/) treatment. It&#8217;s a pretty simple mapping framework that relies on good old SQL. We&#8217;ve used iBATIS frequently in the past several years and we continue to use it for connecting to our legacy system over using Hibernate.

Our issue is that we use a JDBC driver to connect to our legacy system, that behind the scenes is really not a relational database at all. In order to do anything but queries we have to wrap the call in a stored procedure syntax since it&#8217;s really calling programs on the mainframe and not accessing the persistence store directly. With iBATIS being SQL based we just have to setup the mapping file from the input and output parameters.