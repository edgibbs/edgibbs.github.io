---
id: 47
title: Circle of Dependencies
date: 2005-07-25T23:08:53+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=47
permalink: /2005/07/25/circle-of-dependencies/
categories:
  - software development
---
Just starting to dig into Spring in Action. So far so good until I run into the first example. It&#8217;s just a Hello World style example so what could go wrong?

First issue crops up when I notice the following line:

<pre>BeanFactory factory =
      new XmlBeanFactory(new FileInputStream("hello.xml"));
</pre>

IntelliJ just keeps barking at me that the constructor for

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          XmlBeanFactory
        </div>
      </td>
    </tr>
  </table>
</div>

can only take a

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          org.springframework.core.io.FileSystemResource
        </div>
      </td>
    </tr>
  </table>
</div>

. Digging through the APIs I find that since I&#8217;m using Spring 1.2.2, this has changed since the book&#8217;s printing. At least there&#8217;s a [reference](http://www.manning-sandbox.com/thread.jspa?threadID=12395&tstart=0) to it in Manning&#8217;s forums for the book. And they mention in the book that the examples are for 1.1.3.

After that I do a very dumb thing. I setup a simple unit test to invoke the HelloWorld method. So far so good. I run the test:

<pre>java.lang.NoClassDefFoundError: org/apache/commons/logging/LogFactory
(long stack trace follows)
</pre>

OK, so I assume I&#8217;ve just screwed up my path to the hello.xml file. That would be the bonehead move that costs me 45 minutes. Somehow I had it in my head that all the dependent libraries must be wrapped up in the spring.jar. After lots of red bars, I finally try importing

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          org.apache.commons.logging
        </div>
      </td>
    </tr>
  </table>
</div>

. Of course IntelliJ can&#8217;t find it. A simple addition to my

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          lib
        </div>
      </td>
    </tr>
  </table>
</div>

directory and my classpath and **BooYa** green bar. I sleep a lot better with green bars.