---
id: 223
title: Learning A Language Through Unit Tests
date: 2005-12-24T23:22:39+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=223
permalink: /2005/12/24/learning-a-language-through-unit-tests/
categories:
  - ruby
  - software development
  - test driven development
---
Over the Xmas break I finally freed up enough time to do a shallow dive into Ruby via the Pickaxe book. So far it&#8217;s very enjoyable for a variety of reasons.

This is the first completely new language I&#8217;ve tried to learn after becoming test infected. It&#8217;s nice to do really simple things and keep executable tests around as a learning tool. So even very simple things like how Ruby handles escapes in single versus double quoted strings becomes

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
          testSingleVersusDoubleQuotes
        </div>
      </td>
    </tr>
  </table>
</div>

:

<pre>def testSingleVersusDoubleQuotes
  assert_not_equal("This line has a\n carriage return",
                   'This line has a\n carriage return')
end
</pre>

I&#8217;ve seen [Mike Clark](http://www.clarkware.com/cgi/blosxom/2005/03/18) take this approach to learning Ruby and [Jeff Langr](http://langrsoft.com/agileJava/) take this approach with Java 1.5, which is part of what gave me the idea.

Then there&#8217;s the shiny new toy aspect which is so far pretty obvious. Ruby is the new cool language. I think one advantage to this that I&#8217;m experiencing is that the Pickaxe book is a very good intro text to a language. I remember not really being happy recommending an intro book for Java programmers until [Head First Java](http://www.oreilly.com/catalog/hfjava/) came out about 2 years ago.

Finally, there&#8217;s the simplicity aspect I find very appealing. Java and its associated frameworks, libraries, and tools has grown into a complex mix no one could ever expect to fully master. Ruby is at this point pretty simple. I haven&#8217;t even really looked at Ruby on Rails, but one web framework versus the plethora in Java does sound enticing. 

Anyway it&#8217;s a good time of year to play with shiny objects.