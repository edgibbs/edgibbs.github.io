---
id: 887
title: Spock Intro Tutorial
date: 2011-03-03T06:21:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=887
permalink: /2011/03/03/spock-intro-tutorial/
categories:
  - acceptence testing
  - groovy
  - software development
  - test driven development
  - tutorial
---
<div align="center">
  <img src="/images/spock.jpg" />
</div>

I gave a presentation on Spock a very nice BDD framework in Groovy a few months back to our Groovy Users Group in Sacramento. After using it on a real world Grails project the last few months it has grown on me to become my go to testing framework for Groovy/Grails or Java projects. A typical specification looks something like this:

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> <span class="st0">"a pager should calculate total pages, current page, and offset"</span><span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; when: <span class="st0">"count, rows and page number"</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> pager <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Pager<span class="br0">&#40;</span><a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20count"><span class="kw5">count</span></a>, rows, page<span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then: <span class="st0">"should return correct total pages, the current page, and the offset"</span><br /> &nbsp; &nbsp; pager.<span class="me1">totalPages</span> <span class="sy0">==</span> totalPages<br /> &nbsp; &nbsp; pager.<span class="me1">currentPage</span> <span class="sy0">==</span> currentPage<br /> &nbsp; &nbsp; pager.<span class="me1">offset</span> <span class="sy0">==</span> offset<br /> <br /> &nbsp; &nbsp; where: <span class="st0">"you have a number of different scenarios"</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20count"><span class="kw5">count</span></a> <span class="sy0">|</span> rows <span class="sy0">|</span> page <span class="sy0">|</span> totalPages <span class="sy0">|</span> currentPage <span class="sy0">|</span> offset<br /> &nbsp; &nbsp; <span class="nu0">100</span> &nbsp; <span class="sy0">|</span> <span class="nu0">10</span> &nbsp; <span class="sy0">|</span> &nbsp; <span class="nu0">1</span> &nbsp;<span class="sy0">|</span> &nbsp; &nbsp;<span class="nu0">10</span> &nbsp; &nbsp; &nbsp;<span class="sy0">|</span> &nbsp; &nbsp; <span class="nu0">1</span> &nbsp; &nbsp; &nbsp; <span class="sy0">|</span> &nbsp; <span class="nu0"></span><br /> &nbsp; &nbsp; <span class="nu0">950</span> &nbsp; <span class="sy0">|</span> <span class="nu0">100</span> &nbsp;<span class="sy0">|</span> &nbsp; <span class="nu0">5</span> &nbsp;<span class="sy0">|</span> &nbsp; &nbsp;<span class="nu0">10</span> &nbsp; &nbsp; &nbsp;<span class="sy0">|</span> &nbsp; &nbsp; <span class="nu0">5</span> &nbsp; &nbsp; &nbsp; <span class="sy0">|</span> &nbsp; <span class="nu0">400</span><br /> &nbsp; &nbsp; <span class="nu0">72</span> &nbsp; &nbsp;<span class="sy0">|</span> <span class="nu0">20</span> &nbsp; <span class="sy0">|</span> &nbsp; <span class="nu0">3</span> &nbsp;<span class="sy0">|</span> &nbsp; &nbsp;<span class="nu0">4</span> &nbsp; &nbsp; &nbsp; <span class="sy0">|</span> &nbsp; &nbsp; <span class="nu0">3</span> &nbsp; &nbsp; &nbsp; <span class="sy0">|</span> &nbsp; <span class="nu0">40</span><br /> &nbsp; <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

If that passed your 5 second test take a look at a fuller introductory tutorial I put together.

[A Gentle Introduction to Spock](http://edgibbs.com/spock-intro-a-bdd-testing-framework-in-groovy/)

And if you want to try out executing real code the project has a nice browser based environment at [Meet Spock](http://meetspock.appspot.com/).