---
id: 1029
title: RSpec stub_chain for legacy code
date: 2015-07-06T19:58:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1029
permalink: /2015/07/06/rspec-stub_chain-for-legacy-code/
categories:
  - ruby
  - software development
  - test driven development
---
I got asked the other day about whether it was OK to use stub\_chain when testing what turned out to be a legacy fat\_model class of over 500 lines. There wasn&#8217;t much to think about as I replied it was OK if there wasn&#8217;t a lot of time in the story for refactoring since the code was already legacy, but it wasn&#8217;t my favorite tool. Even the documentation notes:

> we recommend treating usage of stub_chain as a code smell

It&#8217;s a part I appreciate about Spec. It&#8217;s an opinionated BDD framework, but it allows you do use it in a way that works for you. I don&#8217;t love stub\_chain or even less as\_null_object, but when diving deep into badly covered code they can be a nice way to open up a seam in the code and allow you to start a big refactoring.