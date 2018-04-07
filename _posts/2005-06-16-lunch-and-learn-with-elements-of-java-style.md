---
id: 13
title: 'Lunch and Learn with &#8216;Elements of Java Style&#8217;'
date: 2005-06-16T23:40:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=13
permalink: /2005/06/16/lunch-and-learn-with-elements-of-java-style/
categories:
  - software development
---
I gave the second of two lunch and learns today on our company coding standard. About a year ago when I first came on board, I went ahead and ordered twenty copies of[_The Elements of Java Style_](http://www.ambysoft.com/elementsJavaStyle.html) <img src="http://edgibbs.com/images/elements_of_java_style_book.jpg" align="left" hspace="4" vspace="2" />and handed them out to the developers. Looking back over projects after a year it was obvious that we weren&#8217;t all on the same page with our coding conventions. I&#8217;ve seen classes named **Person_fb** and lots of really short variable names like **ln**, **p**, and **cur**. And some of the developers liked curly braces on new lines even though the style guide declared they started on the same line as the declaration of the block.

<pre>public void doSomething() 
{
  // do something
}</pre>

instead of:

<pre>public void doSomething() {
  //do something
}</pre>

Constant names often looked like **mail_server** or **pdfDir**.

So as an attempt to pull everyone back onto the same page I setup a lunch and learn on the top 10 coding conventions from the book. 

You can find the powerpoint slides here: (I&#8217;ll probably do the next one in KeyNote.) 

[powerpoint stack](http://edgibbs.com/public/top_10_java_code_conventions.ppt)