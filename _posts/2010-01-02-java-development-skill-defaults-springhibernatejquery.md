---
id: 784
title: 'Java Development Skill Defaults: Spring/Hibernate/jQuery'
date: 2010-01-02T20:34:11+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=784
permalink: /2010/01/02/java-development-skill-defaults-springhibernatejquery/
categories:
  - management
  - ruby
  - software development
  - test driven development
---
<div align="center">
  <img src="/images/bear_sign.jpg" /><br /> <!-- http://www.flickr.com/photos/57402879@N00/341533554/ -->
</div>

Not too long ago a local recruiter noted at a JUG meeting:

> &#8220;I don&#8217;t care what else you have on your resume, but you have to have Spring and Hibernate. I know it was all EJB and SOA just a few years ago, but now if you don&#8217;t have Spring/Hibernate you&#8217;re not getting past the HR screen.&#8221;

As a development manager and even in my professional services role I tend to screen dozens of resumes. I have noticed the preponderance of Spring/Hibernate taking over the usual emphasis on EJB and Struts on the average mid-level java developer. It&#8217;s actually a pleasant change to know that the open source community ended up victorious in the marketing war over the official specifications. 

Knowing Spring can mean all sorts of things since it&#8217;s a fairly large framework. At a minimum I expect a developer to have an idea of using it for dependency injection, but it&#8217;s nice to see some exposure to Spring&#8217;s AOP concepts, Spring Security, or even something like Spring Batch. It&#8217;s a bounus when they have exposure to something like Grails which has been added to the Spring family and wraps much of the low level Spring items in a nice DSL framework.

With Hibernate most developers have left behind either the old hand rolled JDBC DAO patterns or potentially entity beans. Generally, I expect they can handle any sort of mapping and understand things like named queries, lazy loading, and second level caches that can catch developers new to Hibernate by surprise.

I&#8217;ve also noted that jQuery in the last year or so has largely become the winner among Javascript libraries and is typically the most common experience I see on resumes. The days of getting by with largely full page reloads for any new request are gone and the Web 2.0 sites have increased UI expectations even for corporate users. 

Looking back a few years it was still the rare corporate shop that cared about frameworks like Spring or Hibernate. The emphasis was on heavyweight solutions like classic EJB or closer to the metal approaches like rolling your own JDBC for every database request. The progress to Spring/Hibernate has been an impressive win for developers wanting something simpler.

I do have a few regrets that JUnit and unit testing are still not a default requirement with most development shops. Almost every java developer has the keyword somewhere on their resume, but I screen enough people to know usually that means they&#8217;ve written a handful of unit tests for perhaps one project in their career and really don&#8217;t understand the value of it.

I also regret that in Java land there are not a handful of default web frameworks. Instead we have dozens of options. .NET, Python, PHP, and Ruby have been more successful in this arena with a handful of web frameworks to choose from in each camp. Usually if you move to a new job you&#8217;re going to have to get up to speed on yet another web framework, because the options are so splintered. Maybe this will consolidate in the next few years. At least with the new languages on the JVM you&#8217;re seeing only one or two web frameworks like Groovy with Grails, Scala with Lift, or even JRuby with Rails. The example in Ruby with Rails merging with Merb for 3.0 is something the Java world needs to do more of.

So if you&#8217;re a java developer and you haven&#8217;t had any real exposure to Spring and Hibernate, I&#8217;d advise at least spending some time with some tutorials at home. The economy is bad enough that you never know when you&#8217;ll be dropped back onto a fairly hostile job market and you&#8217;ll at least need them as baseline skills.