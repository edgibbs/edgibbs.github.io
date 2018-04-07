---
id: 926
title: Breaking the Build at the New Job
date: 2011-09-17T19:43:55+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=926
permalink: /2011/09/17/breaking-the-build-at-the-new-job/
categories:
  - automated builds
  - software development
  - test driven development
---
<div align="center">
  <img src="http://edgibbs.com/images/i_broke_the_build.jpg" alt="I broke the build" /><br /> <!-- Picture taken by http://www.flickr.com/photos/dhaun/5626938236/in/photostream/ -->
</div>

My first break of the CI build on a new team came about two weeks into starting the new job. We had made a small change to a dynamically created URL on a single page of the application. Normally this would fall into the category of &#8220;too simple to test&#8221; for me. My pairing partner pointed out when we started the story that we should put a test in for the change. I argued that changing a URL was too simple a change to bother writing a test for. He disagreed, but let me go ahead after some further discussion. After checking in the feature, about an hour later a developer on the other side of the room piped up with &#8220;Someone broke the build.&#8221; My pairing partner smiled and said, &#8220;I guess we didn&#8217;t need to test that.&#8221; 

It turned out there was another test I didn&#8217;t realize had a dependency on that same link and by changing it we had broken an assertion on the specific URL. A bit embarrassed I learned an important lesson. My assumptions about &#8220;too simple to break&#8221; needed some adjusting. 

Over the course of several weeks I came to appreciate that many things were worth testing. A particularly revealing example was testing a new javascript dialog. Javascript is always a pain point when it comes to unit testing, and I&#8217;ve often let that coverage of javascript functionality be covered by functional tests usually with Selenium. My pairing partner walked me through a complete TDD approach asserting every part of the function we created and the various DOM elements we used to create it. I did ask a few questions about whether we really needed to test that we had created a DOM element in some exact order at points, but he was firm about testing in every piece. By the end of the feature I had a new appreciation for doing very low level unit testing.

I love that I&#8217;m being challenged on not writing enough tests. For so long in past shops I was the hardcore TDD advocate constantly questioned about the real need for testing some component. Now I&#8217;m learning to test in even very small changes.