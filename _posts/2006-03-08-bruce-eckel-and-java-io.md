---
id: 289
title: Bruce Eckel and Java IO
date: 2006-03-08T22:49:44+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=289
permalink: /2006/03/08/bruce-eckel-and-java-io/
categories:
  - podcasts
  - software development
---
The [Java Posse](http://javaposse.com/) podcast recently [interviewed](http://javaposse.com/index.php?post_id=64249) [Bruce Eckel](http://www.mindview.net/). About 32 minutes into the first of a two part interview Bruce says the following about the Java IO library:

&#8220;I don&#8217;t know if they (Sun) are just in denial or what. Opening a file is still a nightmare.&#8221;

It was good to hear one of the Java luminaries speak to this fact. I remember teaching an intro class on Java to about 24 people and explaining all the wonderful PrintWriters and BufferedReaders. For the majority of the class it was completely confusing. And despite hand waving about you need these streams because the file might be located across the network it was still very hard to grasp. It&#8217;s another one of those things where I have to look at some sample code every time I need to actually open a file in Java.

Anyway Bruce&#8217;s solution was to write a [utility class](http://www.cs.brandeis.edu/~cs11a/aaa-TIJ3-distribution/com/bruceeckel/util/TextFile.java) to handle it.