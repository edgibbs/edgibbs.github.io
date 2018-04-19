---
id: 614
title: Learning In Tests
date: 2007-08-09T21:24:45+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/08/09/learning-in-tests/
permalink: /2007/08/09/learning-in-tests/
categories:
  - software development
  - test driven development
---
I was testing a method that did some validation of a 2 character state. It&#8217;s legacy code, very few tests so I&#8217;m learning about how the code really works as I go along. I was writing a test for the following line:

{% highlight java %}
else if (!BasicUtils.isState(state.trim()))
{% endhighlight %}

I wrote a test set the **state** property to &#8220;AA&#8221; and asserted that the validation failed. Problem was the validation passed and the test failed. OK, I found a weird defect. I took a bit of digging through layers until I got to the EJB layer where I found my answer:

{% highlight java %}

stateValue.add("Armed Forces the Americas");
state.add("AA");
{% endhighlight %}

Turns out &#8220;AA&#8221; is a valid state code defined by the US Post Office.
