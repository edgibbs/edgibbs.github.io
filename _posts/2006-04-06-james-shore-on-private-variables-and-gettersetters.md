---
id: 317
title: James Shore On Private Variables and Getter/Setters
date: 2006-04-06T19:58:48+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=317
permalink: /2006/04/06/james-shore-on-private-variables-and-gettersetters/
categories:
  - software development
---
It was nice to run across this [post](http://www.jamesshore.com/Articles/Quality-With-a-Name.html) by [James Shore](http://www.jamesshore.com/) on the silliness of default getter/setter methods. I&#8217;ve [posted](http://edgibbs.com/2005/07/13/two-additional-ruby-features-i-wish-were-in-java/) on this before and Alan Holub has a fairly famous/infamous rant on why [Getter and Setters Are Evil](http://www.javaworld.com/javaworld/jw-09-2003/jw-0905-toolbox.html).

> As just one example of this, let&#8217;s look at the simple and popular &#8220;instance variables must be private&#8221; design rule.

> Now for the problem with the rule. People know about the &#8220;private variables&#8221; rule but don&#8217;t think about why. So you end up with code like this. I swear to God, I see this stuff everywhere.

<pre>public class MySillyClass { 
  private string _myFakeEncapsulatedVariable; 
  public string getMyFakeEncapsulatedVariable() { 
    return _myFakeEncapsulatedVariable; 
  } 
  public void setMyFakeEncapsulatedVariable(string var) { 
    _myFakeEncapsulatedVariable = var; 
  } 
}
</pre>

> From a coupling standpoint, there&#8217;s very little difference between this code and a public variable. The code follows the letter of the rule, sure. But the programmer of this class clearly hasn&#8217;t thought things through. The &#8220;private variables&#8221; rule was a mere speedbump on the way to thoughtless design.

This part of the argument is down towards the bottom of a very large post. If you haven&#8217;t run across [James Shore](http://www.jamesshore.com/) before his blog posts are often experiential and quite enlightening on Agile and XP techniques.