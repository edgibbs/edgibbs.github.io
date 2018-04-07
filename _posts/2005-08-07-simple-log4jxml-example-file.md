---
id: 59
title: Simple log4j.xml Example File
date: 2005-08-07T21:44:29+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=59
permalink: /2005/08/07/simple-log4jxml-example-file/
categories:
  - software development
---
I&#8217;ve had to configure Log4J several times over the years and I&#8217;ve never particularly enjoyed the experience. Log4J is in general just not well documented, surprisingly so since it is used extensively in the Java world.

So I found myself going through some examples in the first part of [Spring in Action](http://www.manning.com/books/walls2) and needing to configure Log4J. So off to the Log4J site only to run into familiar problems:

  * Most of the documentation forgets to mention the easiest way to configure Log4J so that you don&#8217;t have to explicitly load a file is to add log4j.xml to the CLASSPATH.
  * Almost all the documentation and tutorials show log4j.properties instead of log4j.xml
  * The documentation and tutorials don&#8217;t explain most of the options for the XML tags.
  * There just isn&#8217;t a good solid recent tutorial. (Or at least I haven&#8217;t run across it)

So I&#8217;m documenting my Log4J setup, mainly so I don&#8217;t have to research it again sometime down the road. The two best tutorials I could find were [&#8216;Don&#8217;t Use System.out.println()!](http://www.vipan.com/htdocs/log4jhelp.html) and [Log4J Tutorial by Ashley J.S Mills](http://supportweb.cs.bham.ac.uk/documentation/tutorials/docsystem/build/tutorials/log4j/log4j.html#LOG4J-External-Config-File). The first details most of the options for layout parameters and focuses on the log4j.properties format. The XML configuration is better covered Ashley J.S. Mills article.

Following below is my sample log4j.xml file:

<pre>&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;!DOCTYPE log4j:configuration SYSTEM "log4j.dtd"&gt;

&lt;log4j:configuration xmlns:log4j="http://jakarta.apache.org/log4j/"&gt;
  &lt;appender name="ConsoleAppender" class="org.apache.log4j.ConsoleAppender"&gt;
    &lt;layout class="org.apache.log4j.SimpleLayout"/&gt;
  &lt;/appender&gt;
  &lt;category name="com.springinaction.chapter01"&gt;
    &lt;priority value="debug"/&gt;
  &lt;/category>&lt;root>&lt;priority value="info"/&gt;
    &lt;appender-ref ref="ConsoleAppender"/&gt;
  &lt;/root&gt;
&lt;/log4j:configuration&gt;
</pre>

The appender section simply defines a Console Appender and a simple layout. The category section defines a package and a priority level. It&#8217;s important that you put this before the root section apparently in the file or you get errors. If you want to log all the debug statements just from your stuff you leave this set to debug. This overrides the root section. The root section is &#8216;required&#8217; or again you get errors about Log4J configuration. In this case its set to &#8216;info&#8217; for the priority so I don&#8217;t get a bunch of debugging messages I don&#8217;t care about in the Spring framework.

Finally you can then use Log4J in any class by adding the following instance variable:

<pre>Logger log = Logger.getLogger(Sample.class);
</pre>

Then when you want to dump something to the logger a simple call:

<pre>log.debug("Entering printThis() Method");</pre>

This simple example doesn&#8217;t show File Appenders or nicely formatted statements with date and time stamps, but it does show the bare minimums to get up and running, so hopefully I&#8217;ll never have to research it again.

My actual opinion of loggers is that they often are signs of bigger problems such as insufficient unit tests. Loggers can be overused as a basic debugging strategy. I prefer to go back and write more unit tests rather than rely on logging to debug a problem. They also tend to clutter up code, though that will theoretically become less of a problem with AOP strategies. Still they&#8217;re generally handy especially for debugging production issues.