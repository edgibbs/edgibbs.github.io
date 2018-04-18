---
id: 887
title: Spock Intro Tutorial
date: 2011-03-03T06:21:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=887
permalink: /2011/03/03/spock-intro-tutorial/
categories:
  - acceptence testing
  - groovy
  - software development
  - test driven development
  - tutorial
---
<div align="center">
  <img src="/images/spock.jpg" />
</div>

I gave a presentation on Spock a very nice BDD framework in Groovy a few months back to our Groovy Users Group in Sacramento. After using it on a real world Grails project the last few months it has grown on me to become my go to testing framework for Groovy/Grails or Java projects. A typical specification looks something like this:

{% highlight groovy %}
 def "a pager should calculate total pages, current page, and offset"() {
  when: "count, rows and page number"
  def pager = new Pager(count, rows, page)

  then: "should return correct total pages, the current page, and the offset"
  pager.totalPages == totalPages
  pager.currentPage == currentPage
  pager.offset == offset

  where: "you have a number of different scenarios"
  count | rows | page | totalPages | currentPage | offset
  100   | 10   |   1  |    10      |     1       |   
  950   | 100  |   5  |    10      |     5       |   400
  72    | 20   |   3  |    4       |     3       |   40
}
{% endhighlight %}

If that passed your 5 second test take a look at a fuller introductory tutorial I put together.

[A Gentle Introduction to Spock](http://edgibbs.com/spock-intro-a-bdd-testing-framework-in-groovy/)

And if you want to try out executing real code the project has a nice browser based environment at [Meet Spock](http://meetspock.appspot.com/).
