---
id: 928
title: Stubbing Partials with RSpec in Rails View Tests
date: 2011-11-19T14:59:51+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=928
permalink: /2011/11/19/stubbing-partials-with-rspec-in-rails-view-tests/
categories:
  - ruby
  - software development
  - test driven development
---
Working with my pair yesterday we ran into an issue testing a view that pulled in several partials. In the interest of making progress we punted after about half an hour of trying to setup expectations on the partials and just tested the negative cases where we didn&#8217;t have to worry about the partials being called. Intellectual curiosity and not wanting to leave the views lightly tested I dived into seeing how we could effectively test that the partials were called as expected.

Say you have a view like the following:

<div class="codecolorer-container ruby vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />
        </div>
      </td>
      
      <td>
        <div class="ruby codecolorer">
          <span class="sy0"><</span>div id=<span class="st0">"content"</span><span class="sy0">></span><br /> <span class="sy0"><</span>div id=<span class="st0">"page_title"</span> style=<span class="st0">"padding-bottom: 20px;"</span><span class="sy0">></span><br /> <span class="sy0"><</span>h2<span class="sy0">></span>Books<span class="sy0"></</span>h2<span class="sy0">></span><br /> <span class="sy0"></</span>div<span class="sy0">></span><br /> <span class="sy0"><</span> <span class="sy0">%</span>= render <span class="re3">:partial</span> =<span class="st0">'tabs'</span> <span class="sy0">%></span>;<br /> <br /> <span class="sy0"><</span> <span class="sy0">%</span> <span class="kw1">if</span> <span class="re1">@books</span>.<span class="me1">empty</span>? <span class="sy0">-%></span>;<br /> <span class="sy0"><</span>em<span class="sy0">></span>No Books<span class="sy0"></</span>em<span class="sy0">><</span>em<span class="sy0">></span><br /> <span class="sy0"><</span> <span class="sy0">%</span> <span class="kw1">else</span> <span class="sy0">%></span><br /> <span class="sy0"><</span> <span class="sy0">%</span>= pagination_links = render <span class="re3">:partial</span> <span class="sy0">=></span> <span class="st0">'shared/pagination'</span>, <span class="re3">:object</span> <span class="sy0">=></span> <span class="re1">@books</span> <span class="sy0">%></span>;<br /> <span class="sy0"><</span> <span class="sy0">%</span>= render <span class="re3">:partial</span> <span class="sy0">=></span> <span class="st0">"book_rows"</span>, <span class="re3">:locals</span> <span class="sy0">=></span> <span class="br0">&#123;</span>:books <span class="sy0">=></span> <span class="re1">@books</span><span class="br0">&#125;</span> <span class="sy0">%></span><br /> <span class="sy0"><</span> <span class="sy0">%</span>= pagination_links <span class="sy0">%></span><br /> <span class="sy0"><</span> <span class="sy0">%</span> <span class="kw1">end</span> <span class="sy0">%></span><br /> <span class="sy0"></</span>em<span class="sy0">></span><br /> <br /> <span class="sy0"></</span>div<span class="sy0">></span>
        </div>
      </td>
    </tr>
  </table>
</div>

You want to test the conditional to see that the partials to display the list of books work correctly. You don&#8217;t want to worry about concerns like setting up the books collection, and you might even want to stub out the call to the partial that displays the tabs a the top of the page.

The Rspec example group for this looks like the following:

<div class="codecolorer-container ruby vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />19<br />20<br />21<br />22<br />23<br />24<br />25<br />26<br />27<br />28<br />
        </div>
      </td>
      
      <td>
        <div class="ruby codecolorer">
          <span class="kw3">require</span> <span class="st0">'spec_helper'</span><br /> <br /> describe <span class="st0">"books.rhtml"</span> <span class="kw1">do</span><br /> &nbsp; before<span class="br0">&#40;</span><span class="re3">:each</span><span class="br0">&#41;</span> <span class="kw1">do</span><br /> &nbsp; &nbsp; assigns<span class="br0">&#91;</span><span class="re3">:books</span><span class="br0">&#93;</span> = <span class="br0">&#91;</span><span class="br0">&#93;</span><br /> &nbsp; <span class="kw1">end</span><br /> <br /> &nbsp; describe <span class="st0">"with no books"</span> <span class="kw1">do</span><br /> &nbsp; &nbsp; it <span class="st0">"should display 'No Books' message"</span> <span class="kw1">do</span><br /> &nbsp; &nbsp; &nbsp; render<br /> &nbsp; &nbsp; &nbsp; response.<span class="me1">should</span> have_text<span class="br0">&#40;</span><span class="sy0">/</span>No Books<span class="sy0">/</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; <span class="kw1">end</span><br /> &nbsp; <span class="kw1">end</span><br /> <br /> &nbsp; describe <span class="st0">"with books"</span> <span class="kw1">do</span><br /> &nbsp; &nbsp; before<span class="br0">&#40;</span><span class="re3">:each</span><span class="br0">&#41;</span> <span class="kw1">do</span><br /> &nbsp; &nbsp; &nbsp; assigns<span class="br0">&#91;</span><span class="re3">:books</span><span class="br0">&#93;</span> = <span class="br0">&#91;</span>Factory.<span class="me1">build</span><span class="br0">&#40;</span><span class="re3">:book</span><span class="br0">&#41;</span><span class="br0">&#93;</span><br /> &nbsp; &nbsp; &nbsp; template.<span class="me1">stub</span><span class="br0">&#40;</span><span class="re3">:render</span><span class="br0">&#41;</span>.<span class="me1">and_call_original</span><br /> &nbsp; &nbsp; &nbsp; template.<span class="me1">stub</span><span class="br0">&#40;</span><span class="re3">:render</span><span class="br0">&#41;</span>.<span class="me1">with</span><span class="br0">&#40;</span>hash_including<span class="br0">&#40;</span><span class="re3">:partial</span> <span class="sy0">=></span> <span class="st0">"tabs"</span><span class="br0">&#41;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; template.<span class="me1">stub</span><span class="br0">&#40;</span><span class="re3">:render</span><span class="br0">&#41;</span>.<span class="me1">with</span><span class="br0">&#40;</span>hash_including<span class="br0">&#40;</span><span class="re3">:partial</span> <span class="sy0">=></span> <span class="st0">"shared/pagination"</span><span class="br0">&#41;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; <span class="kw1">end</span><br /> <br /> &nbsp; &nbsp; it <span class="st0">"should render book rows"</span> <span class="kw1">do</span><br /> &nbsp; &nbsp; &nbsp; template.<span class="me1">should_receive</span><span class="br0">&#40;</span><span class="re3">:render</span><span class="br0">&#41;</span>.<span class="me1">with</span><span class="br0">&#40;</span>hash_including<span class="br0">&#40;</span><span class="re3">:partial</span> <span class="sy0">=></span> <span class="st0">"book_rows"</span><span class="br0">&#41;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; &nbsp; render<br /> &nbsp; &nbsp; <span class="kw1">end</span><br /> &nbsp; <span class="kw1">end</span><br /> <span class="kw1">end</span>
        </div>
      </td>
    </tr>
  </table>
</div>

The key find was to use with(:hash_including()) which I found from a helpful link at [Stack Overflow](http://stackoverflow.com/questions/1893544/rspec-partials-problem).