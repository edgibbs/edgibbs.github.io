---
id: 903
title: Mock With Spock
date: 2011-06-06T19:38:16+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=903
permalink: /2011/06/06/mock-with-spock/
categories:
  - groovy
  - software development
  - test driven development
---
My default rule with mocking is to try to stick to stubs where possible. I don&#8217;t enjoy having to setup and verify interactions with mocks, but sometimes you have some code where that&#8217;s exactly what you need to do. I&#8217;ve used many frameworks in Java over the years from EasyMock to Mockito, but I was quite happy with how easy it was to do in Spock. I recently found myself having to build a test harness around some legacy code. The real world code was more involved, but it looked something like this:

<div class="codecolorer-container java vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />
        </div>
      </td>
      
      <td>
        <div class="java codecolorer">
          &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">void</span> addDefaultQuestions<span class="br0">&#40;</span>Category category<span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">&#40;</span>categoryDao.<span class="me1">getCategory</span><span class="br0">&#40;</span>category.<span class="me1">getId</span><span class="br0">&#40;</span><span class="br0">&#41;</span><span class="br0">&#41;</span>.<span class="me1">getQuestions</span><span class="br0">&#40;</span><span class="br0">&#41;</span>.<span class="me1">isEmpty</span><span class="br0">&#40;</span><span class="br0">&#41;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">for</span> <span class="br0">&#40;</span>Question question <span class="sy0">:</span> category.<span class="me1">getQuestions</span><span class="br0">&#40;</span><span class="br0">&#41;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">&#40;</span>question.<span class="me1">isDefaultQuestion</span><span class="br0">&#40;</span><span class="br0">&#41;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; categoryDao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>question, <span class="kw2">true</span><span class="br0">&#41;</span><span class="sy0">;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">&#125;</span> <span class="kw1">else</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; categoryDao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>question, <span class="kw2">false</span><span class="br0">&#41;</span><span class="sy0">;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">&#125;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">&#125;</span><br /> &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">&#125;</span><br /> &nbsp; &nbsp; <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

The method is taking a category, checking if any questions related to the category exist in the database and then saving all the questions with a valid flag set to true or false. Not unusual in a typical corporate application, but I want to test two things:

  * I can add new questions to the database with the proper valid flag.
  * If the database category already has some questions then do nothing.

After walking through the Spock [mocking documentation](http://code.google.com/p/spock/wiki/Interactions) I had a pretty good sense of the approach. In Spock it&#8217;s referred to as interactions, but it doesn&#8217;t follow the typical expect-run-verify pattern. You just verify what you need to if you need to. And given a choice I prefer not to have to verify the mock at all. 

With this code I needed to mock the categoryDao which used straight JDBC and made calls to the real database. That meant I needed a way to verify that the questions were added correctly with calls to the categoryDao. Hence I needed the power of an actual mock and not just a stub class.

The first test would show that I could save new questions in a category to the database:

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />19<br />20<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          &nbsp;<a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> <span class="st0">"should only insert new default questions"</span><span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; given:<br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> question1 <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Question<span class="br0">&#40;</span>defaultQuestion: <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><span class="br0">&#41;</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> question2 <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Question<span class="br0">&#40;</span>defaultQuestion: <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20false"><span class="kw2">false</span></a><span class="br0">&#41;</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> category <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Category<span class="br0">&#40;</span>questions: <span class="br0">&#91;</span>question1, question2<span class="br0">&#93;</span><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; CategoryDao dao <span class="sy0">=</span> Mock<span class="br0">&#40;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; dao.<span class="me1">getCategory</span><span class="br0">&#40;</span>_<span class="br0">&#41;</span> <span class="sy0">>></span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Category<span class="br0">&#40;</span><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; CategoryService service <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> CategoryService<span class="br0">&#40;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; service.<span class="me1">setCategoryDao</span><span class="br0">&#40;</span>dao<span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; when:<br /> &nbsp; &nbsp; service.<span class="me1">addDefaultQuestions</span><span class="br0">&#40;</span>category<span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then:<br /> &nbsp; &nbsp; <span class="nu0">1</span> <span class="sy0">*</span> dao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>_, <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><span class="br0">&#41;</span><br /> &nbsp; &nbsp; <span class="nu0">1</span> <span class="sy0">*</span> dao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>_, <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20false"><span class="kw2">false</span></a><span class="br0">&#41;</span><br /> <br /> &nbsp; <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

So the steps are:

  1. Setup a Category object with two questions.
  2. Create a mock dao.
  3. Define a method and its default return value on the mock DAO. 
      1. We define arguments to getCategory() with a wildcard operator the underscore standing in for an id.
      2. Then with the right shift operator (>>) we define that we will return a newly created Category object.
  4. Inject the mock into the service class we&#8217;re testing.
  5. Finally, we make verifications on the addQuestion() method by just stating the number of times we expect the method to be called with a given set of arguments, again reusing the wildcard underscore character.

You can even specify the particular order you expect by breaking the verifications into separate **then:** blocks. For this example it wouldn&#8217;t matter on the order, but in case it did the last when then block would change to:

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          &nbsp; &nbsp; when:<br /> &nbsp; &nbsp; service.<span class="me1">addDefaultQuestions</span><span class="br0">&#40;</span>category<span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then:<br /> &nbsp; &nbsp; <span class="nu0">1</span> <span class="sy0">*</span> dao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>_, <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then:<br /> &nbsp; &nbsp; <span class="nu0">1</span> <span class="sy0">*</span> dao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>_, <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20false"><span class="kw2">false</span></a><span class="br0">&#41;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

And to round out testing the legacy Java code we need to test the negative example where it should do nothing if there are already questions in the database for the given category.

<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />
        </div>
      </td>
      
      <td>
        <div class="groovy codecolorer">
          &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> <span class="st0">"should add no questions if questions are already in database"</span><span class="br0">&#40;</span><span class="br0">&#41;</span> <span class="br0">&#123;</span><br /> &nbsp; &nbsp; given:<br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> question1 <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Question<span class="br0">&#40;</span>defaultQuestion: <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20true"><span class="kw2">true</span></a><span class="br0">&#41;</span><br /> &nbsp; &nbsp; <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20def"><span class="kw2">def</span></a> question2 <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Question<span class="br0">&#40;</span>defaultQuestion: <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20false"><span class="kw2">false</span></a><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; CategoryDao dao <span class="sy0">=</span> Mock<span class="br0">&#40;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; dao.<span class="me1">getCategory</span><span class="br0">&#40;</span>_<span class="br0">&#41;</span> <span class="sy0">>></span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Category<span class="br0">&#40;</span>questions: <span class="br0">&#91;</span>question1<span class="br0">&#93;</span><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; CategoryService service <span class="sy0">=</span> <a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> CategoryService<span class="br0">&#40;</span><span class="br0">&#41;</span><br /> &nbsp; &nbsp; service.<span class="me1">setCategoryDao</span><span class="br0">&#40;</span>dao<span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; when:<br /> &nbsp; &nbsp; service.<span class="me1">addDefaultQuestions</span><span class="br0">&#40;</span><a href="http://www.google.de/search?q=site%3Agroovy.codehaus.org/%20new"><span class="kw2">new</span></a> Category<span class="br0">&#40;</span>questions: <span class="br0">&#91;</span>question2<span class="br0">&#93;</span><span class="br0">&#41;</span><span class="br0">&#41;</span><br /> <br /> &nbsp; &nbsp; then:<br /> &nbsp; &nbsp; <span class="nu0"></span> <span class="sy0">*</span> dao.<span class="me1">addQuestion</span><span class="br0">&#40;</span>_,_<span class="br0">&#41;</span><br /> <br /> &nbsp; <span class="br0">&#125;</span>
        </div>
      </td>
    </tr>
  </table>
</div>

So we can test for the negative case by just verifying that addQuestion was called zero times.