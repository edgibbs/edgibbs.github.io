---
id: 343
title: Rails with Rake test_performance Task
date: 2006-05-06T01:05:07+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=343
permalink: /2006/05/06/rails-rake-test_performance-task/
categories:
  - ruby
  - software development
  - test driven development
---
In a bid to have more fun, I&#8217;m hacking my way through the later parts of [Agile Web Development with Rails](http://www.pragmaticprogrammer.com/titles/rails1/index.html) (1st Edition). I added in the admittedly simplistic performance test of adding 100 orders to the database. Just to be a bit anal I wanted to add a Rake task for it as well.

I&#8217;m still pretty much in squid/newbie mode with Rake, but by adding the following 4 lines of code to in lib/tasks/performance.rake I was able to successfully create a test_performance task:

<pre>desc "Run performance tests"
Rake::TestTask.new("test_performance") { |test|
  test.pattern = 'test/performance/*_test.rb'
}
</pre>

Then a simple

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
          rake test_performance
        </div>
      </td>
    </tr>
  </table>
</div>

runs the performance tests.