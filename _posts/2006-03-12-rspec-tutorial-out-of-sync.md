---
id: 293
title: RSpec Tutorial Out of Sync
date: 2006-03-12T21:45:36+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=293
permalink: /2006/03/12/rspec-tutorial-out-of-sync/
categories:
  - conferences
  - ruby
  - software development
---
Just setting up my iBook for the next two days of tutorials at Software Development West 2006 and I ran across a familiar problem. [Dave Astels](http://blog.daveastels.com/) is running the hands on tutorial on Behavior-Driven Development and using [RSpec](http://rspec.rubyforge.org/) which he wrote in Ruby.

My notes say:

> Attendees should be able to run the RSpec examples successfully before the tutorial.

So I&#8217;ve downloaded RSpec 0.4 and tried to run through the tutorial. The very first example is write the following expectation:

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
          1.should_equal 1
        </div>
      </td>
    </tr>
  </table>
</div>

And I get the following error:

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
          undefined method `should_equal' for 1:Fixnum
        </div>
      </td>
    </tr>
  </table>
</div>

After much experimentation I tried:

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
          1.should.equal 1
        </div>
      </td>
    </tr>
  </table>
</div>

And I get:

<pre>Finished in 0.037051 seconds
0 specifications, 0 failures</pre>

So I wrapped it up into a little class:

<pre>require 'spec'
class ExpectationsTest &lt; Spec::Context
  def expect_one
    1.should.equal 1
  end
end</pre>

Then I happily get:

<pre>Finished in 0.017554 seconds
1 specifications, 0 failures</pre>

I&#8217;m guessing the the tutorial hasn&#8217;t been updated to the current release of the software. Another minor thing is that when you do the install and confirm that RSpec works by issuing the

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
          spec
        </div>
      </td>
    </tr>
  </table>
</div>

command. You&#8217;re suppose to see:

<pre>Finished in 0.002726 seconds
0 specifications, 0 expectations, 0 failures</pre>

Instead I see:

<pre>Finished in 0.021852 seconds
0 specifications, 0 failures</pre>

Somehow the expectations total is missing which makes me wonder if I&#8217;ve done something wrong. Anyway I think I have everything and I should get a much better feel for it after the tutorial.

Update, turns out that Dave did mention the should_equal changing to should.equal in this [blog entry](http://blog.daveastels.com/?p=70). Now the tutorial just needs to be updated.