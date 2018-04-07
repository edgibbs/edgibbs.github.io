---
id: 393
title: Rails and RSpec over Lunch
date: 2006-07-10T21:45:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=393
permalink: /2006/07/10/rails-and-rspec-over-lunch/
categories:
  - ruby
  - software development
  - test driven development
---
With two small children at home I&#8217;ve lately been trying to get in about an hour of coding around lunch. These days thats Ruby on Rails and RSpec. I spent about half an hour today trying to figure out why RSpec was failing on the following:

<pre>"bob".should_be "bob"</pre>

Seemed reasonable especially since the following passed fine:

<pre>2.should_be 2</pre>

These were really simplified examples I came to after about the first 15 minutes. Turns out I found the answer by paying closer attention to the RSpec API. It turns out should_be calls the equal? method not the == method. Worked fine with:

<pre>"bob".should_be_equal "bob"</pre>

I&#8217;m enjoying trying out RSpec with Rails so far, though the startup time to run the specs is about 8-10 seconds on my laptop which is a bit annoying.