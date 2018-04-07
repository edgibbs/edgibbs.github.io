---
id: 1077
title: Javascript Goes Back to Class
date: 2015-11-16T22:38:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1077
permalink: /2015/11/16/javascript-goes-back-to-class/
categories:
  - javascript
  - software development
---
Not long ago at a user group I saw a strange piece of sample code like this on an overhead projector:

{% highlight javascript linenos %}
class Person {

  constructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  fullName() {
    return this.firstName + ' ' + this.lastName;
  }

}
{% endhighlight %}

I chuckle a little bit inside. I&#8217;ve heard plenty of arguments over the years that Javascript&#8217;s prototypical inheritance was the right way to do things and trying to force traditional OO on Javascript was doing it all wrong:

> If you&rsquo;re creating constructor functions and inheriting from them, you haven&rsquo;t learned JavaScript. It doesn&rsquo;t matter if you&rsquo;ve been doing it since 1995. You&rsquo;re failing to take advantage of JavaScript&rsquo;s most powerful capabilities. &#8212; [Eric Elliot](https://medium.com/javascript-scene/the-two-pillars-of-javascript-ee6f3281e7f3)

It turns out ECMAScript 6 has officially added class style OO to the language. So the needs of many occasional Javascript developers to have a more familiar looking construct that would be at home in Java, C#, or Ruby eventually won.
