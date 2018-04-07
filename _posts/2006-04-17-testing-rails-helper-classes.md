---
id: 326
title: Testing Rails Helper Classes
date: 2006-04-17T19:52:49+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=326
permalink: /2006/04/17/testing-rails-helper-classes/
categories:
  - ruby
  - software development
  - test driven development
---
I&#8217;m making my way through [Agile Web Development with Rails](http://www.pragmaticprogrammer.com/title/rails/) TDD style after an earlier sillier attempt at waiting until the testing chapter about 150 pages into the book. I really like the skeletons for unit tests and functional tests. Then I wanted to test the following helper method in the ApplicationHelper class:

<pre>def fmt_dollars(amount)
    sprintf("$%0.2f", amount)
  end
</pre>

This resulted in a bit of thrashing for about 30 minutes without much luck until I came across a post by Doug Alcorn on [Testing Rails Helpers](http://www.pragmaticprogrammer.com/title/rails/). The solution looks like:

<pre>require File.dirname(__FILE__) + '/../test_helper'<br />
class ApplicationHelperTest &lt; Test::Unit::TestCase
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::TagHelper
  include ApplicationHelper
  # include whatever helpers you want to test here, sometimes you'll need
  # to include some of the Rails helpers, as I've done above.<br />
  def test_formatting_dollars
	assert_equal "$29.90", fmt_dollars(29.9)
  end
end
</pre>

Considering unit testing utility classes are some of the easiest things to test in Java I felt a bit incompetent when I had a tough time with this. I think I need to better understand how Ruby does packaging with modules and how the include keyword really works.