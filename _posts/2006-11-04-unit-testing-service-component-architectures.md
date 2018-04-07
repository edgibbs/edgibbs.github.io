---
id: 472
title: Unit Testing Service Component Architectures
date: 2006-11-04T19:55:29+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=472
permalink: /2006/11/04/unit-testing-service-component-architectures/
categories:
  - software development
  - test driven development
  - websphere
---
Nice to see someone at IBM has finally taken a look at how you might [test their wonderful SCA modules](http://www-128.ibm.com/developerworks/websphere/techjournal//0608_artus/0608_artus.html).

Turns out you have to go through many steps in Websphere Integration Developer (WID) and it appears to rely on Cactus which tends to be a real pain. Getting the whole thing setup involves several XML configuration files and plenty of clickety-click development. And they aren&#8217;t really coming from the perspective of test first, since you always lay out the process first using their visual modeler. I personally despise this whole style of development, but being able to actually force it into something of a test harness does make it a bit more palatable.

Getting to a green bar with an SCA module:

  * 47 steps.

  * 1. To import these modules into your workspace using WebSphere Integration Developer, select File => Import.
  * 2. In the Import dialogue, select Project Interchange, and then Next.
  * &#8230;
  * 46. Select the Arguments pane. Under VM arguments enter the following code(Figure 12): 
    <pre>-Dcactus.contextURL=http://localhost:9080/MT_TestMailServiceJUnitWeb</pre>
    
    Note that this specifies the localhost and port 9080; if your server or port for HTTP requests are different, you will need to adjust this string to match your choices.</li> 
    
      * 47. Select Run to initiate the test.</ul> 
    
    Getting to a green bar testing a POJO:
    
      * 4 steps.
      1. Write a failing test.
      2. Implement a class and method to fix compiler errors.
      3. Implement just enough code to pass the test.
      4. Run the test for a green bar.