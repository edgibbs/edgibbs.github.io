---
id: 470
title: Using this Keyword to Call Private Methods
date: 2006-11-01T21:37:53+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=470
permalink: /2006/11/01/using-this-keyword-to-call-private-methods/
categories:
  - code reviews
  - software development
---
After a recent code review I noticed a lot of code similar to the following:

<pre>this.createAUser();
</pre>

or

<pre>if (this.isValidProfile()) {
</pre>

Our coding standards allow for using **this** with fields to make the distinction clear:

<pre>private int count;
pubic void setCount(int count) {
  this.count = count
}
</pre>

We adopted [The Elements of Java Style](http://www.ambysoft.com/books/elementsJavaStyle.html) for our coding style guide about 2.5 years ago, but **this** is a case I&#8217;d never spent much time thinking about. I find it a lot clearer to write something like:

<pre>createAUser() 
</pre>

or

<pre>if (isValidProfile()) {
</pre>

I always assumed this was a well understood convention, but after spending some Googling around I found nothing specifically on idioms with using **this** with methods. 

I think the best evidence in favor of not using the this keyword is with Martin Fowler&#8217;s [Extract Method](http://www.refactoring.com/catalog/extractMethod.html) pattern. You often create small methods by doing a simple extract of a code fragment on a method that&#8217;s getting a little long. And Martin&#8217;s example suggests calling the extracted methods with:

<pre>printBanner();
printDetails(getOutstanding())
</pre>

not:

<pre>this.printBanner();
this.printDetails(this.getOutstanding())
</pre>

For me it all comes down to better readability, but we&#8217;ll probably have a short meeting with some of the senior developers to toss it around and come to a final decision. If we hadn&#8217;t been doing code reviews on a regular basis we might have never addressed this issue.