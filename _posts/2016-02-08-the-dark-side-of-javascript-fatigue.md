---
id: 1098
title: The Dark Side of Javascript Fatigue
date: 2016-02-08T20:54:20+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1098
permalink: /2016/02/08/the-dark-side-of-javascript-fatigue/
categories:
  - javascript
  - ruby
  - software development
---
Javascript fatigue is a real experience for many developers who don&#8217;t spend their day to day in Node.js bashing out javascript. For many developers javascript is an occasional concern. The thing I can&#8217;t figure out about the javascript development world is the incredible churn. Churn is often disaster for a programming community. It frustrates anyone trying to build a solid application that will have a shelf life of a decade or more. Newcomers are treated to overwhelming choices without enough knowledge to choose. Then they find what they&#8217;ve learned is no longer the new and shiny tool only a few months later. And anyone on the outside feels validated in not jumping in.

Many in the javascript community attempt to couch all the churn as a benefit. It&#8217;s the incredible pace of innovation. I see sentiments like this:

> The truth is, if you don&rsquo;t like to constantly be learning new things, web development is probably not for you. You might have chosen the wrong career!
  
> &#8212; [Josh Burgess](https://medium.com/@joshburgess/javascript-fatigue-an-alternative-perspective-b6ae411e89ac#.io6cl65k9) 

Even if we accept that it all the &#8216;innovation&#8217; is moving things forward more quickly, there is rarely the reflection on the consequences. I&#8217;ve worked on an approximately 9 year old Rails app for about 5 years now and I&#8217;m still shocked by the number different frameworks and styles of javascript that litter the app:

  * Hand rolled pre JQuery javascript
  * Javascript cut and paste style
  * RJS (an attempt to avoid writing javascript altogether in early rails)
  * YUI
  * Prototype
  * Google Closure
  * JQuery
  * Angular

Eight different frameworks in about as many years. And though we adopted Angular about 2 years ago we&#8217;re already dealing with non-backwards compatibility, Angular 2.0. This is a large burden on maintenance and it costs us very real time to spin up on each one when we have to enhance the app or fix a bug.

This is a monolithic app that&#8217;s been built over quite a few years, but the big difference is the Rails app was opinionated and stuck to a lot of default conventions. The framework churn of Rails has been much more gradual and generally backwards compatible. The largest pain we experience was going from Rails 2 to 3, when Rails was merged with Merb. The knowledge someone built up in their first few years working in Ruby and Rails still applies. The churn is certainly exists, but at a measure pace.

In phone screens when I describe our main app, I list off the myriad javascript frameworks we use as a negative they should know about. And almost none of the candidates have heard of Google Closure, even though a critical piece of the app was written in it. They often assume I must be talking about the JVM Clojure.

Javascript has never been popular because of elegance or syntax. Rants like the following are not hard to find:

> You see the Node.js philosophy is to take the worst fucking language ever designed and put it on the server.
  
> &#8212; [Drew Hamlett](https://medium.com/@wob/the-sad-state-of-web-development-1603a861d29f#.2v49dasi5) 

Large majorities of developers would rather avoid it completely to focus on any modern language and hopefully use a transpiler if they have to touch Javascript. In this environment it might do the javascript community some good to settle down some and focus on some stability.