---
id: 860
title: DSLs In Action Review
date: 2010-10-17T21:31:00+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=860
permalink: /2010/10/17/dsls-in-action-review/
categories:
  - ruby
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/dsls_in_action.jpg" />
</div>

As a software manager and developer I&#8217;ve followed the gradual adoption of DSLs as a mainstream technique. I&#8217;ve worked with numerous DSLs including:

  * Rails
  * RSpec
  * Easymock, Mockito
  * Selenium
  * Grails, GORM
  * Rake
  * Ant (as ugly as an XML DSL is)

RSpec was a wonder at the time compared to JUnit 3 where I spent the bulk of my testing time. I loved the &#8216;should&#8217; syntactic sugar and the clean English definitions of the specs. Expressive tests are critical to maintaining a large codebase and they almost require DSL implementations. Rails pushed the idea into a full fledged web framework and made ugly implementations like JSF in Java land look like poor cousins. DSLs also helped with the adoption of newer dynamic languages like Ruby and Groovy, because method chaining in languages like Java don&#8217;t make a nice DSL.

It&#8217;s taken a while for the literature to catch up to the use of DSLs among developers. Indeed Martin Fowler has been working on his DSL book for 4-5 years. The great majority of DSL use is through frameworks and libraries so currently very few engineers are coming up with their own DSLs. [DSLs in Action](http://www.manning.com/ghosh/) by [Debasish Ghosh](http://debasishg.blogspot.com/) is an attempt to show some options in taking on DSL development on your next project.

The book defines two types of DSLs:

  * Internal DSLs &#8211; Rails, Grails
  * External DSLs &#8211; generated with tools like ANTLR

The book covers both types with a greater focus on embedded internal DSLs that the reader is probably more familiar with. If the approach had been to focus more on external DSLs I think the audience would have been more limited as most developers are not ready to jump into the complexity of writing there own external DSLs or even had the time to look at something like a DSL workbench like JetBrains Meta-Programming System. I loved that the diagrams were hand drawn whiteboard UML-lite style, as thats a trend I strong encourage in technical books.

The code samples do a good job of illustrating the various strengths of different languages you can use for implementing DSLs. The example domain is a Wall Street trading firm. The Java example looks like:

<div class="codecolorer-container java vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />
        </div>
      </td>
      
      <td>
        <div class="java codecolorer">
          Order o <span class="sy0">=</span> <br /> &nbsp; <span class="kw1">new</span> Order.<span class="me1">Builder</span><span class="br0">&#40;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; .<span class="me1">buy</span><span class="br0">&#40;</span><span class="nu0">100</span>, <span class="st0">"IBM"</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; .<span class="me1">atLimitPrice</span><span class="br0">&#40;</span><span class="nu0">300</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; .<span class="me1">allOrNone</span><span class="br0">&#40;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; .<span class="me1">valueAs</span><span class="br0">&#40;</span><span class="kw1">new</span> OrderValuerImpl<span class="br0">&#40;</span><span class="br0">&#41;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; .<span class="me1">build</span><span class="br0">&#40;</span><span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

Typical method chaining and a bit verbose. Not exactly the code you hope to show to a technically savvy business user.

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          newOrder.<span class="me1">to</span>.<span class="me1">buy</span><span class="br0">&#40;</span><span class="nu0">100</span>.<span class="me1">shares</span>.<span class="me1">of</span><span class="br0">&#40;</span><span class="st0">'IBM'</span><span class="br0">&#41;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; limitPrice &nbsp; &nbsp; &nbsp; <span class="nu0">300</span><br /> &nbsp; allOrNone &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><br /> &nbsp; valueAs &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class="br0">&#40;</span>qty, unitPrice <span class="sy0">-></span> qty <span class="sy0">*</span> unitPrice <span class="sy0">-</span> <span class="nu0">500</span><span class="br0">&#41;</span><br /> <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

Much nicer, even if the curly brackets still bug me.

<div class="codecolorer-container lisp vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />
        </div>
      </td>
      
      <td>
        <div class="lisp codecolorer">
          <span class="br0">&#40;</span>def trade1<br /> &nbsp; <span class="br0">&#123;</span><span class="sy0">:</span><span class="me1">ref-no</span> <span class="st0">"tr-123"</span><br /> &nbsp; &nbsp;<span class="sy0">:</span><span class="me1">account</span> <span class="br0">&#123;</span><span class="sy0">:</span><span class="me1">no</span> <span class="st0">"c1-a1"</span> <span class="sy0">:</span><span class="kw1">name</span> <span class="st0">"john doe"</span> <span class="sy0">:</span><span class="me1">type</span> 'trading'<span class="br0">&#125;</span><br /> &nbsp; &nbsp;<span class="sy0">:</span><span class="me1">instrument</span> <span class="st0">"eq-123"</span> <span class="sy0">:</span><span class="kw1">value</span> <span class="nu0">1000</span><span class="br0">&#125;</span><span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

Lisp syntax, but very readable.

<div class="codecolorer-container scala vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />
        </div>
      </td>
      
      <td>
        <div class="scala codecolorer">
          &nbsp;<a href="http://scala-lang.org"><span class="kw1">val</span></a> fixedIncomeTrade <span class="sy0">=</span> <br /> &nbsp; <span class="nu0">200</span> discount bonds IBM<br /> &nbsp; &nbsp; for<span class="sy0">_</span>client NOMURA on NYSE at <span class="nu0">72</span>.<span class="me1">ccy</span><span class="br0">&#40;</span>USD<span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

A nice syntax parsing out all the strings. I found the actual implementation classes for this example hard to follow, but the end resulting syntax might be worth the pain, though you can accomplish a similar syntax in Groovy or Ruby.

To note this is a polyglot programmer assumed book. The code examples range include Java, Ruby, Groovy, Clojure, and Scala. If you&#8217;re still mostly a Java developer this probably isn&#8217;t the book you want to start with as the coding syntax especially with Clojure and Scala will make it difficult to follow. I have a long background in Java, Ruby, and Groovy, and reasonable exposure to Lisp like languages, but I found the Scala examples and syntax jarring. It did help solidify my feelings that I just don&#8217;t like the syntax and complexity of Scala at least on the surface. (To be fair I probably need to spend some time with it, maybe it grows on you.)

The book does a good job of walking you through examples of implementing DSLs in various languages and the approaches you might take. In daily development the likely DSLs to be implemented will be embedded DSLs, but the book does a good job of dealing with external DSLs and the complexity involved. Even the the author admits that at the end of a chapter on implementing external DSLs using Scala&#8217;s parser combinators feature that:

> If you have reached this far in reading the chapter on parser combinators, you have really learnt a lot about one of the most advanced applications of functional programming in language design. 

Overall I found the book helpful in expanding my overall understanding of DSLs, and I will probably reference it the next time I need to build a small DSL in Groovy or Ruby on a project.