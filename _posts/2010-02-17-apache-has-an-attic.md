---
id: 800
title: Apache has an Attic
date: 2010-02-17T20:31:11+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=800
permalink: /2010/02/17/apache-has-an-attic/
categories:
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/attic.jpg" /><br /> <!-- http://www.flickr.com/photos/oldcockatoo/4118891245/ -->
</div>

Everyone has that trunk of old junk tucked away in the attic. It&#8217;s almost spring and time to think about getting organized, tossing out old junk, and having a garage sale. Apache has managed to create an online concept of a software attic. Old open source projects that have outlived there useful lives can be retired there. The concept is intuitive and useful in a world with hundreds of thousands of open source projects, many abandoned early in there life.

I&#8217;m not sure how long the Apache attic has been around, but I came across it accidentally. I&#8217;ve been doing a lot of architecture assignments recently which often involves digging through big source code trees to get a sense of how their development has evolved. In Java land I run into dozens of different web frameworks, and I came across a project utilizing [Apache Beehive](http://attic.apache.org/projects/beehive.html). I recalled it was some extra XDoclet like commented annotations on top of Struts that was adopted by Weblogic as their default framework years ago. I&#8217;m all too familiar with classic Struts, but now I needed to go look up Apache Beehive to see where the framework was currently.

It didn&#8217;t take too long to arrive at the [Apache Attic](http://attic.apache.org/) page. The mission was stated as such:

> The Apache Attic was created in November 2008 to provide process and solutions to make it clear when an Apache project has reached its end of life. 

Brilliant! Explaining that the time has come to evolve the codebase is much easier when Apache has officially retired the project. Unlike so many other open source projects I don&#8217;t have to do the following investigation on arriving at some SourceForge page where it appears the project has been abandoned. I don&#8217;t have to make an argument that though despite a few check ins in the last year that on active projects there will typically be hundreds of check ins and that the project is essentially dead. I don&#8217;t have to point out that despite having a plugin architecture for some framework there are only say 5 plugins that have been developed and the last one was 3 years ago. And finally my explanation to management has the official endorsement of Apache.

I&#8217;d like to encourage more of this in the future. I await the day when Struts Classic moves to the Apache attic.