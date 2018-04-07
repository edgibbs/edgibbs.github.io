---
id: 395
title: A Small Bug in RSpec 0.5.13
date: 2006-07-12T18:41:41+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=395
permalink: /2006/07/12/a-small-bug-in-rspec-05013/
categories:
  - ruby
  - software development
  - test driven development
---
I&#8217;m doing a recreational Rails project in my infrequent spare time and using <a href="http://rspec.rubyforge.org/">RSpec</a> as well. After generating a controller for the

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
          Game
        </div>
      </td>
    </tr>
  </table>
</div>

class I noticed it failed on a very simple specification.

<pre>controller.should_be_an_instance_of GameController</pre>

The failure message was:

<pre>undefined method 'an_instance_of?' for #&lt;GameController:0x222df78&gt;</pre>

That looked pretty wrong. Why was it trying to call

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
          an_instance_of?
        </div>
      </td>
    </tr>
  </table>
</div>

. It turns out

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
          a
        </div>
      </td>
    </tr>
  </table>
</div>

and

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
          an
        </div>
      </td>
    </tr>
  </table>
</div>

are just syntactic sugar methods that just return

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
          self
        </div>
      </td>
    </tr>
  </table>
</div>

. So just for fun I changed to the dot notation without the underscore sugar.

<pre>controller.should.be.an.instance.of GameController</pre>

That passed with flying colors. OK, so now I know it&#8217;s just an issue with the underscores. Writing a spec to show the issue was fairly simple:

<pre>context "Underscore Example Error" do
  specify "should_be_an_instance_of fails with underscore notation" do
    lambda { "example".should_be_an_instance_of String }.should_raise NoMethodError
  end
  specify "should.be.an.instance.of fails with underscore notation" do
    lambda { "example".should_not_be_an_instance_of Fixnum }.should_raise NoMethodError
  end
  specify "should_be_a_kind_of should fails underscore notation" do
    lambda { "example".should_be_a_kind_of Object }.should_raise NoMethodError
  end
  specify "should.not_be_a_kind_of fails with underscore notation" do
    lambda { "example".should_not_be_a_kind_of Fixnum }.should_raise NoMethodError
  end   
end
</pre>

The bug appears to be with the following method in 

<pre>def method_missing(sym, *args, &block)
        if __is_sweetened? sym
          object = self
          calls = sym.to_s.split("_")
          while calls.length > 1
            call = calls.shift
            object = object.__send__(call)
            break if call == "be"
          end
          return object.__send__(calls.join("_"), *args, &block)
        end
        __orig_method_missing(sym, *args, &block)
      end
</pre>

Hopefully tonight I&#8217;ll have time to code up a quick suggested patch and submit it. First I have to download a few gems and run the tests specs for RSpec to see if I might have broken something else with my fix.

I&#8217;m enjoying forcing myself to really think about contexts, specifications, and should statements instead of tests. I think I could probably accomplish about the same thing with good old

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
          Test::Unit
        </div>
      </td>
    </tr>
  </table>
</div>

, but forcing your brain to think down a different path can sometimes change your perspective.