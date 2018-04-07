---
id: 247
title: Current Java Web Framework Options
date: 2006-01-20T21:05:50+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=247
permalink: /2006/01/20/current-java-web-framework-options/
categories:
  - jsf
  - podcasts
  - software development
---
Listening to a [podcast](http://timshadel.com/blog/2006/01/19/jsf-the-7-layer-burrito-i-wont-eat-again/) by [Tim Shadel](http://timshadel.com/blog/) on difficulties with JSF and why he wouldn&#8217;t use it again brought up a current headache in the java web development space. Today&#8217;s options for java web frameworks blow.

Let me expound a bit:

**Struts** &#8211; Works fine, has been the defacto standard for years, but its showing its age. It hasn&#8217;t really been updated significantly in years. It doesn&#8217;t have an obvious successor yet since there is no Struts 2.0. It&#8217;s harder to test because it extends from all the framework classes. Within the java community it&#8217;s considered pretty much a legacy framework.

**JSF** &#8211; Very hyped and part of the J2EE spec so it&#8217;s supported by the app servers. Has a lot of vendor tooling support showing up. Has a very flexible event model. Is being pushed by the creator of Struts. Unfortunately it suffers from a host of problems. [Tim Shadel](http://timshadel.com/blog/) described just a small part of this his recent post on JSF. Essentially he described how they had to get around JSF&#8217;s lack of handling GET requests with a few URL parameters.

His example was having one WAR file that needs to link to another WAR file and pass along an id. The hack involved:

  * Creating an extra JSP file.
  * Linking to the JSP file directly.
  * Send along the parameter.
  * Opens up FacesContext.
  * Gets the request object.
  * Pulls off the id parameter.
  * Locates a backing bean with session scope.
  * Stuffs the id the backing bean.
  * Forwards it to a JSF page.
  * Then it can pull up the appropriate page and get the parameter.

This is just plain ugly. Tim goes on to mention that when someone waxes grandly about JSF he asks a simple question? So how do you write a blog in it?

If this were JSF&#8217;s only problem it would be one thing, but testing the darn thing is really hard as well since it relies on things like FacesContext that have to be mapped. The only mock objects are found in the [Shale](http://edgibbs.com/2005/11/30/unit-testing-jsf-with-shale-mock/) project. Even something as simple as [JWebUnit](http://jwebunit.sourceforge.net/) for testing from the front end fails because JSF relies on some javascript for just about everything.

I still have some hope that JSF may evolve to something reasonable, but today it&#8217;s still pretty messy.

**Tapestry, Webworks, Wicket, Spring MVC, etc** &#8211; I haven&#8217;t spent much time with any of these web frameworks for a simple reason. They don&#8217;t have really a large enough mindshare and community to make me think that betting the farm on them isn&#8217;t a huge risk. I have no doubt they are probably all better than Struts, but none of them have really caught on as a Struts successor.

This is exactly the reason why something like Ruby on Rails has so much appeal to java web developers since in Ruby it&#8217;s by far the defacto standard for web applications, and it includes lots of cutting edge features from built in unit test harnesses to AJAX support. Since JSF doesn&#8217;t appear to be the hoped for Struts replacement I wonder if we&#8217;ll see one anytime soon.

<!-- Technorati Tags Start -->

Technorati Tags:
  
<a href="http://technorati.com/tag/software%20development" rel="tag">software development</a>, <a href="http://technorati.com/tag/podcasts" rel="tag">podcasts</a>, <a href="http://technorati.com/tag/jsf" rel="tag">jsf</a> 

<!-- Technorati Tags End -->