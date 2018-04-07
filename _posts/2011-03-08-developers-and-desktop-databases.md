---
id: 891
title: Developers and Desktop Databases
date: 2011-03-08T06:26:07+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=891
permalink: /2011/03/08/developers-and-desktop-databases/
categories:
  - software development
---
Typically development groups fall into one of two patterns:

  * Shared development database &#8211; every developer shares a single centralized development database often managed by a DBA group.
  * Desktop databases &#8211; every developer has an individual instance of the database.

The practice has evolved over time and developers tend to follow precedence on it. Historically, developers didn&#8217;t think of running a local database, primarily because of the resources involved. Installing and running something like Oracle locally used to be a significant drag on a development machine. You were already trying to run some sort of IDE that sucked up most of your machines resources so running the database locally wasn&#8217;t a great option. If you were lucky enough to be running a pretty light weight database you might think about running a local copy, but otherwise you just setup a connection and shared the dev instance.

As machines have gotten quite capable of running databases, IDEs, and even virtual machines all at the same time the option to run a local copy of the database became very real. In this case a number of developers began to install and run local copies of the database. Running your own local copy quickly makes some development issues stand out:

  * You have to learn a bit more about how your target database software is setup. Suddenly it&#8217;s just not just a set of connection parameters.
  * You have to think about the best way to coordinate changes to the database model. Making a lot of changes locally to apply later to the central dev integration instance is going to end in a lot of angry emails with how you broke the build.
  * You can quickly experiment with local changes to the database model without impacting the rest of the team.
  * You have a truly complete development environment, so if you take your laptop home at night, work remotely for the day, or get called for troubleshooting in the evening you can be effective without having to VPN into the dev database or drive into the office.

I think the long term trend is most developers will run local instances of their target database. This is almost standard in startups and newer organizations. As a consultant I love having a complete development environment since I can run and demo the project at a moment&#8217;s notice. The issues with integration are being addressed with approaches like database migrations in Rails and maintenance of DDL in source control, treating it like an equal member of the code. I&#8217;ve also seen partial steps towards this model with the idea of in-memory local databases used for unit/integration testing where you use an ORM like Hibernate to build the database model on the fly whenever you need to run tests.