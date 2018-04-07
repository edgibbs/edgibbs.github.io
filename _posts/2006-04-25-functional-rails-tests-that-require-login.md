---
id: 333
title: Functional Rails Tests That Require Login
date: 2006-04-25T20:22:08+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=333
permalink: /2006/04/25/functional-rails-tests-that-require-login/
categories:
  - ruby
  - software development
  - test driven development
---
Since as soon as you add login to a site your functional tests are going to require a login, there is of course an easy fix documented [here](http://wiki.rubyonrails.com/rails/pages/HowtoFunctionalTest). You just add a login method to your test_helper.rb file. Then you call it in your setup method:

<pre>def setup
  @controller  = LoginController.new
  @request     = ActionController::TestRequest.new
  @response    = ActionController::TestResponse.new
  login
  @controller  = AdminController.new
end
</pre>

I made a silly mistake at first and called

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
          login
        </div>
      </td>
    </tr>
  </table>
</div>

right after:

<pre>@controller = LoginController.new</pre>

Of course I was greeted with a whole bunch of:

<pre>RuntimeError: @request is nil: make sure you set it in your test's setup method.</pre>

Simple fix was to move it after the creation of the request and response objects needed by the

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
          login
        </div>
      </td>
    </tr>
  </table>
</div>

method. At least the error message made it a quick duh! moment.