---
id: 1072
title: Timely Pull Request Responses
date: 2015-11-03T21:53:50+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1072
permalink: /2015/11/03/timely-pull-request-responses/
categories:
  - automated builds
  - software development
---
<div>
  <img src="/images/jenkins_chuck_norris.jpg" />
</div>

I contributed some pull requests this year to several projects including the classic [Jenkins Chuck Norris Plugin](https://wiki.jenkins-ci.org/display/JENKINS/ChuckNorris+Plugin). Some of them were accepted quickly, others had a bit of back and forth and a few sat for months. My [pull request](https://github.com/jenkinsci/chucknorris-plugin/pull/6) for the Chuck Norris Plugin attempted to fix an issue where the large Chuck images no longer showed up because Jenkins had changed its&#8217; layout design. It took diving back into some Java and brushing up on Jelly templates to figure out what was going on with the bug. After some testing I submitted a pull request and hoped to be able to integrate the fix soon after.

That was December of 2014. The fix was finally merged in November of 2015. I don&#8217;t have any negative feelings about it. People get busy. It&#8217;s open source.

At some point people get bored with projects, move on, don&#8217;t have time, or they don&#8217;t work in the language anymore. I think there&#8217;s two reasonable ways to handle this:

  * Hand off maintainer duties. It&#8217;s the best option if you have someone interested in taking over the project.
  * Post your explanation for not updating the project on the README to let them know pull requests and issues probably won&#8217;t get any attention. Then someone who cares enough can fork it or at least it&#8217;s use will slowly dwindle down.

In the Chuck Norris case they got a new maintainer, and my little fix is finally merged in and released.