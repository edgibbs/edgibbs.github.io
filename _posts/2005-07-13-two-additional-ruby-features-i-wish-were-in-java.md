---
id: 34
title: Getter and Setters in Ruby verus Java
date: 2005-07-13T21:56:37+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=34
permalink: /2005/07/13/two-additional-ruby-features-i-wish-were-in-java/
categories:
  - software development
---
I came across a post on a [Ruby feature](http://jroller.com/page/thuss/20050713#two_features_of_ruby_i) that Todd Huss would like to see in Java:

> Native getter/setter support: declaring a list of variables as attr\_reader or attr\_writer allows getter/setter functionality of a variable without writing/maintaining any redundant getter/setter code, yet if necessary, you can override the default getter/setter behaviour without affecting the API. In Java it drives me crazy that we waste time and clutter our classes unnecessarily with hundreds of lines of getter/setter methods that all do the same thing. Java really needs a construct for default getter/setter behaviour on selected variables that can be overriden when necessary.

I agree that all the clutter and extra lines from getter/setter methods are really annoying within Java code. My preference though is to simply drop the getter/setter methods altogether and make the variable public. Better yet keep it private and don&#8217;t expose it to anything, it should be data only the class makes use of to implement behavior.

Allen Holub has an article entitled [Why Getters and Setters Are Evil](http://www.javaworld.com/javaworld/jw-09-2003/jw-0905-toolbox.html) that argues that the getter/setter idiom in java is really not a good idea. If you haven&#8217;t read it basically it argues that the getter/setter methods are procedural hangovers that should largely be abandoned.

I remember back when I taught an Intro to Java course or two that there was a wonderful discussion of encapsulation and that one of the examples were the getter/setter methods that encapsulated the private variables. Everytime I covered this topic I felt it was a really weak argument. If you have a private instance variable, but then you just implement default public getter/setter methods, esentially you&#8217;re making the variable public again. If that&#8217;s the case why not just use the dot syntax and make the instance variable public.

Holub talks about this in his article, but the obvious thing is that the getter/setter paradigm has become standard in Java both by procedural programmers who were used to objects that look like just collections of data and by the default JavaBean implementation. Indeed I occasionally try to leave off getter/setter methods only to find in many frameworks like Struts, Spring, and others that they assume they can use reflection and the get/set methods to implement functionality.

I sat through a session as SD 2005 this year and found Allen&#8217;s presentation pretty refreshing since he was taking on established practices in Java. What was amazing was the amount of flak he took for bringing this up from much of the audience.

Anyway I still end up implementing a lot of get/set methods since a lot of frameworks require it, even if it isn&#8217;t very object oriented.