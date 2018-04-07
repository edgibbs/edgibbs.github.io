---
id: 893
title: 'Grails Unit Testing: Mocking With MetaClass Stubs'
date: 2011-04-17T13:06:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=893
permalink: /2011/04/17/grails-unit-testing-mocking-with-metaclass-stubs/
categories:
  - groovy
  - software development
  - test driven development
---
On a recent project I ran into issues with testing controllers in Grails. Starting test first, I spent some early time figuring out how much support there was out of the box for unit testing Grails domain classes and controllers. I setup [Spock](http://code.google.com/p/spock/) as a plugin and plunged in. I was dealing with a legacy database which had 100% compound primary keys so many of the findBy type operations that are well supported for controller testing are of no help. Often I found I needed to mock a call to a find or findAll with HQL syntax or a criteria call. I knew metaClass mocking could work here, but I wanted to understand better how that would impact the rest of the code after I started replacing methods on the fly. Turns out Grails unit testing has built in support for cleaning up metaClass hacking after every test with the registerMetaClass() method in GrailsUnitTestCase. [Mrhaki](http://mrhaki.blogspot.com/) has a good [post](http://mrhaki.blogspot.com/2010/03/grails-goodness-using-metaclass-with.html) on this. Here&#8217;s an Spock example:

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />19<br />20<br />21<br />22<br />23<br />24<br />25<br />26<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20import"><span class="kw2">import</span></a> <span class="co2">grails.plugin.spock.ControllerSpec</span><br /> <br /> <br /> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20class"><span class="kw2">class</span></a> ContractControllerSpec <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20extends"><span class="kw2">extends</span></a> ControllerSpec <span class="br0">&#123;</span><br /> <br /> &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> setup<span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; registerMetaClass Contract<br /> &nbsp; <span class="br0">&#125;</span><br /> <br /> &nbsp;<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> <span class="st0">"validateContract() returns true for an existing contract"</span><span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; given:<br /> &nbsp; &nbsp; mockDomain<span class="br0">&#40;</span>Contract<span class="br0">&#41;</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> contract <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Contract<span class="br0">&#40;</span>division: <span class="st0">'33'</span>, unit: <span class="st0">'99'</span>, contractNumber: <span class="st0">'C7777777'</span><span class="br0">&#41;</span>.<span class="me1">save</span><span class="br0">&#40;</span>flush: <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><span class="br0">&#41;</span><br /> &nbsp; &nbsp; controller.<span class="me1">params</span>.<span class="me1">division</span> <span class="sy0">=</span> <span class="st0">'33'</span><br /> &nbsp; &nbsp; controller.<span class="me1">params</span>.<span class="me1">unit</span> <span class="sy0">=</span> <span class="st0">'99'</span><br /> &nbsp; &nbsp; controller.<span class="me1">params</span>.<span class="me1">contractNumber</span> <span class="sy0">=</span> <span class="st0">'C7777777'</span><br /> &nbsp; &nbsp; Contract.<span class="me1">metaClass</span>.<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20static"><span class="kw2">static</span></a>.<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20find"><span class="kw5">find</span></a> <span class="sy0">=</span> <span class="br0">&#123;</span> <a href="http://www.google.de/search?as_q=String&num=100&hl=en&as_occt=url&as_sitesearch=java.sun.com%2Fj2se%2F1%2E5%2E0%2Fdocs%2Fapi%2F"><span class="kw3">String</span></a> query, <a href="http://www.google.de/search?as_q=Map&num=100&hl=en&as_occt=url&as_sitesearch=java.sun.com%2Fj2se%2F1%2E5%2E0%2Fdocs%2Fapi%2F"><span class="kw3">Map</span></a> namedArgs <span class="sy0">-></span> contract <span class="br0">&#125;</span><br /> <br /> &nbsp; &nbsp; when:<br /> &nbsp; &nbsp; controller.<span class="me1">validateContract</span><span class="br0">&#40;</span><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then:<br /> &nbsp; &nbsp; <span class="st0">"TRUE"</span> <span class="sy0">==</span> controller.<span class="me1">response</span>.<span class="me1">contentAsString</span><br /> &nbsp; <span class="br0">&#125;</span><br /> <br /> <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

Grails has support for the same idea using mockFor(), but the syntax is much like EasyMock. The same test would look like:

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />19<br />20<br />21<br />22<br />23<br />24<br />25<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20import"><span class="kw2">import</span></a> <span class="co2">grails.plugin.spock.ControllerSpec</span><br /> <br /> <br /> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20class"><span class="kw2">class</span></a> ContractControllerSpec <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20extends"><span class="kw2">extends</span></a> ControllerSpec <span class="br0">&#123;</span><br /> <br /> &nbsp;<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> <span class="st0">"validateContract() returns true for an existing contract"</span><span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; given:<br /> &nbsp; &nbsp; mockDomain<span class="br0">&#40;</span>Contract<span class="br0">&#41;</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> contract <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Contract<span class="br0">&#40;</span>division: <span class="st0">'33'</span>, unit: <span class="st0">'99'</span>, contractNumber: <span class="st0">'C7777777'</span><span class="br0">&#41;</span>.<span class="me1">save</span><span class="br0">&#40;</span>flush: <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><span class="br0">&#41;</span><br /> &nbsp; &nbsp; controller.<span class="me1">params</span>.<span class="me1">division</span> <span class="sy0">=</span> <span class="st0">'33'</span><br /> &nbsp; &nbsp; controller.<span class="me1">params</span>.<span class="me1">unit</span> <span class="sy0">=</span> <span class="st0">'99'</span><br /> &nbsp; &nbsp; controller.<span class="me1">params</span>.<span class="me1">contractNumber</span> <span class="sy0">=</span> <span class="st0">'C7777777'</span><br /> <br /> &nbsp; <span class="co1">// EasyMock like syntax</span><br /> &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> mockContract <span class="sy0">=</span> mockFor<span class="br0">&#40;</span>Contract<span class="br0">&#41;</span><br /> &nbsp; &nbsp; mockContract.<span class="me1">demand</span>.<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20static"><span class="kw2">static</span></a>.<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20find"><span class="kw5">find</span></a><span class="br0">&#40;</span><span class="nu0"></span>..<span class="nu0">5</span><span class="br0">&#41;</span> <span class="br0">&#123;</span> <a href="http://www.google.de/search?as_q=String&num=100&hl=en&as_occt=url&as_sitesearch=java.sun.com%2Fj2se%2F1%2E5%2E0%2Fdocs%2Fapi%2F"><span class="kw3">String</span></a> query, <a href="http://www.google.de/search?as_q=Map&num=100&hl=en&as_occt=url&as_sitesearch=java.sun.com%2Fj2se%2F1%2E5%2E0%2Fdocs%2Fapi%2F"><span class="kw3">Map</span></a> namedArgs <span class="sy0">-></span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20null"><span class="kw2">null</span></a> <span class="br0">&#125;</span><br /> <br /> &nbsp; &nbsp; when:<br /> &nbsp; &nbsp; controller.<span class="me1">validateContract</span><span class="br0">&#40;</span><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then:<br /> &nbsp; &nbsp; <span class="st0">"TRUE"</span> <span class="sy0">==</span> controller.<span class="me1">response</span>.<span class="me1">contentAsString</span><br /> &nbsp; <span class="br0">&#125;</span><br /> <br /> <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

For pure stubs I prefer the syntax of just using MetaClass. I often don&#8217;t care about validating the exact calls to the dependent class so I don&#8217;t really want a full mock. You don&#8217;t need a call to registerMetaClass() because mockFor() does this for you.