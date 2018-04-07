---
id: 1009
title: RSpec and the Death of Should
date: 2015-05-18T18:53:30+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1009
permalink: /2015/05/18/rspec-and-the-death-of-should/
categories:
  - ruby
  - software development
  - test driven development
---
I love writing expectations like the following:

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
          account.<span class="me1">balance</span>.<span class="me1">should</span> be_zero
        </div>
      </td>
    </tr>
  </table>
</div>

It was one of the reasons I first fell in love with RSpec and had a reason to move from dabbling in Ruby to diving in. This was hard and clear evidence that Ruby crushed testing syntax of Java in a way it could never compete with. Just a beautiful DSL with a single little word &#8216;should&#8217;.

Expect has come along to replace and it accomplishes the same thing with a bit more syntax and parens:

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
          expect<span class="br0">&#40;</span>account.<span class="me1">balance</span><span class="br0">&#41;</span>.<span class="me1">to</span> be_zero
        </div>
      </td>
    </tr>
  </table>
</div>

It reads well, but I still like &#8216;should&#8217; better and I&#8217;m not as upset as some about object purity and polluting objects with an extra method. Our development team concluded as much for the last few years. We&#8217;d put a quick vote up every 6 months or so to keep should() or bite the bullet and move onto expect. Should always won, but over time the objections became more mild and newer team members had gotten adjusted to expect elsewhere. When the vote came up again a few weeks back, we finally voted to default to the new expect syntax.

My vote had changed from preferring should to being neutral on it. Over time most of that came from working on newer Ruby open source projects and following the new expect syntax when adding tests in a pull request. Idioms and styles evolve and I&#8217;d seen enough adoption to justify retiring my old friend should(). The small benefit has been with Jasmine with its very similar expects now doesn&#8217;t lead to accidentally writing a should() in a Jasmine spec. I still miss should(), but having everyone use the same assertion approach is better for the group.