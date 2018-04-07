---
id: 274
title: 'Local Variable Names: Whole Words Versus Letters'
date: 2006-02-19T16:50:49+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=274
permalink: /2006/02/19/local-variable-names-whole-words-versus-letters/
categories:
  - ruby
  - software development
---
I&#8217;m trying to make sure I really understand Ruby&#8217;s blocks and closures, so I was digging ahead to Chapter 22 of the Pickaxe book on &#8216;Blocks, Closures, and Proc Objects.&#8217; On page 358-359 there was a bit of example code:

<pre>def meth1
  (1..10).each do |val|
    return val  # returns from method
  end
end
</pre>

I would have just used

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
          value
        </div>
      </td>
    </tr>
  </table>
</div>

for the variable name, but maybe this is a very popular idiom in Ruby.

<pre>t = Thread.new do
</pre>

OK, this is the sort of stuff that drives me crazy in Java when people do it. Instead of just naming it thread or something logical we just assign it to

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
          t
        </div>
      </td>
    </tr>
  </table>
</div>

, a meaningless English character. When you read later down in the code you get no hint about what

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
          t
        </div>
      </td>
    </tr>
  </table>
</div>

is so you have to hold that in your brain or refer back to its definition again.

Then there&#8217;s there&#8217;s these examples :

<pre>pr = Proc.new { next 99 }
</pre>

<pre>p = Proc.new { return 99 }
</pre>

Couldn&#8217;t it have been at least

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
          proc
        </div>
      </td>
    </tr>
  </table>
</div>

! At this point I don&#8217;t grok enough about ruby&#8217;s Proc class to really come up with a better name, but it appears to be a closure so that might be a reasonable name as well. 

I know the counter arguments. One, this is a book with example code so they&#8217;re trying to save space. Possible, but you&#8217;re also introducing the language to people so you should probably try to be as clear as possible. Two, it saves typing. True, but typing is not what slows down my coding, defects and harder to follow code does. Three, that&#8217;s the Ruby idiom. That may be very true, so this may seem as normal to me as using i,j for looping counters. I&#8217;ll just have to see if that proves out.

<!-- Technorati Tags Start -->

Technorati Tags:
  
<a href="http://technorati.com/tag/software%20development" rel="tag">software development</a>, <a href="http://technorati.com/tag/ruby" rel="tag">ruby</a> 

<!-- Technorati Tags End -->