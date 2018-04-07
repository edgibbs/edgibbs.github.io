---
id: 397
title: Ruby Versus Java Conventions
date: 2006-07-14T19:51:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=397
permalink: /2006/07/14/ruby-versus-java-conventions/
categories:
  - ruby
  - software development
  - test driven development
---
Having spent a long time almost exclusively coding Java since about 2001. I have some mental baggage when it comes to adjusting to Ruby. Excepting some tinkering in PHP and Python in the last five years I&#8217;ve primarily been living in an IDE with Java when I actually got to code.

I realize I have this bias, and I&#8217;m adjusting, but a small bug fix I submitted to RSpec shows that I still probably have more adjustment to do. The problem isn&#8217;t important, and in fact it was just a change to one line of code that was necessary.

The line of code was:

<pre>def method_missing(sym, *args, &block)
        if __is_sweetened? sym
          object = self
          calls = sym.to_s.split("_")
          while calls.length > 1
            call = calls.shift
            object = object.__send__(call)
            <b>break if call == "be"</b>
          end
          return object.__send__(calls.join("_"), *args, &block)
        end
        __orig_method_missing(sym, *args, &block)
      end
</pre>

The important line is

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
          break if call == "be"
        </div>
      </td>
    </tr>
  </table>
</div>

. The context isn&#8217;t critical, but essentially it needed to add conditions to only break if the next element in the array wasn&#8217;t the strings &#8216;a&#8217; or &#8216;an&#8217;. In my head I thought there was probably a nice clean Ruby way to do this, and heck Array has a lot of nice convenience methods, so I started there.

My first attempt came up as:

<pre>break if call == "be" && (calls.first != "a" || calls.first != "an")
</pre>

I found the

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
          first
        </div>
      </td>
    </tr>
  </table>
</div>

method from Array and I liked that, but the rest of the conditional felt exactly like something I&#8217;d write in Java except it would have been:

<pre>break if call == "be" && (calls[0] != "a" || calls[0] != "an")
</pre>

OK, time for a little refactoring for readability. Extract out the conditional to a method and give it a better name.

<pre>break if call == "be" && a_or_an_follows_be(calls)
...
def a_or_an_follows_be(calls)
  return (calls.first != "a" || calls.first != "an")
end
</pre>

At this point I figured it was reasonable even if not probably the most Rubyesque. Luckily the new release of RSpec fixed this bug and I was able to see what they did:

<pre>break if call == "be" unless ["an","a"].include? calls[0]
</pre>

Much more concise, I would have never thought of just using a simple two element array.