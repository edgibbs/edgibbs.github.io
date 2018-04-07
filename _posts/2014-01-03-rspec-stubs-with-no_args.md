---
id: 971
title: RSpec Stubs with no_args
date: 2014-01-03T23:35:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=971
permalink: /2014/01/03/rspec-stubs-with-no_args/
categories:
  - ruby
  - software development
  - test driven development
---
We&#8217;ve been getting pretty particular about our stub/mock expectations at work. A few months ago I would been perfectly happy with:

<div class="codecolorer-container ruby vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="ruby codecolorer">
          TwitterGateway.<span class="me1">stub</span><span class="br0">&#40;</span><span class="re3">:new</span><span class="br0">&#41;</span>.<span class="me1">and_return</span><span class="br0">&#40;</span>double<span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

I didn&#8217;t worry about specifying that I didn&#8217;t pass any arguments to the constructor. After it was pointed out that the stub didn&#8217;t really fully specify its&#8217; expectations I changed to this style:

<div class="codecolorer-container ruby vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="ruby codecolorer">
          TwitterGateway.<span class="me1">stub</span><span class="br0">&#40;</span><span class="re3">:new</span><span class="br0">&#41;</span>.<span class="me1">with</span><span class="br0">&#40;</span><span class="br0">&#41;</span>.<span class="me1">and_return</span><span class="br0">&#40;</span>double<span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

Then a colleague pointed out a nice bit of syntactic sugar. You can simply specify a no_args matcher if no arguments are passed in:

<div class="codecolorer-container ruby vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="ruby codecolorer">
          TwitterGateway.<span class="me1">stub</span><span class="br0">&#40;</span><span class="re3">:new</span><span class="br0">&#41;</span>.<span class="me1">with</span><span class="br0">&#40;</span>no_args<span class="br0">&#41;</span>.<span class="me1">and_return</span><span class="br0">&#40;</span>double<span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

A more complete stub with better readability. Reminds me of how I fell in love with RSpec the first time I saw it back in [2006](http://edgibbs.com/2007/12/02/jbehave-and-rspec-history/).