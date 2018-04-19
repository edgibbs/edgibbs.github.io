---
id: 603
title: Javadoc Clutter
date: 2007-07-24T21:24:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/24/javadoc-clutter/
permalink: /2007/07/24/javadoc-clutter/
categories:
  - software development
---
I once thought Javadoc was a great tool. I added an ant target for every project I built. Now it&#8217;s just clutter. I saw another example of the pain point of Javadoc again recently on an internal project that isn&#8217;t designed to ever be used as an API:

{% highlight java %}
/*
* Returns Publisher when passed Id
*/
public Publisher getPublisherById(String id)

/*
* Returns Publisher when passed Id
*/
public Publisher getInstitutionById(String id)

{% endhighlight %}

Just drives me crazy the comments fall out of sync with the code as soon as someone performs a cut and paste. And the darn things can double the number of lines in a class, especially when you have a lot of short methods. (And you should have a lot of short methods.) Uggh.
