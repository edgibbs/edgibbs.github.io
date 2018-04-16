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

{% highlight erb linenos %}
<div id="content">
<div id="page_title" style="padding-bottom: 20px;">
<h2>Books</h2>
</div>
< %= render :partial ='tabs' %>;

< % if @books.empty? -%>;
<em>No Books</em><em>
< % else %>
< %= pagination_links = render :partial => 'shared/pagination', :object => @books %>;
< %= render :partial => "book_rows", :locals => {:books => @books} %>
< %= pagination_links %>
< % end %>
</em>

</div>
{% endhighlight %}


You want to test the conditional to see that the partials to display the list of books work correctly. You don&#8217;t want to worry about concerns like setting up the books collection, and you might even want to stub out the call to the partial that displays the tabs a the top of the page.

The Rspec example group for this looks like the following:

{% highlight ruby linenos %}
require 'spec_helper'

describe "books.rhtml" do
  before(:each) do
    assigns[:books] = []
  end

  describe "with no books" do
    it "should display 'No Books' message" do
      render
      response.should have_text(/No Books/)
    end
  end

  describe "with books" do
    before(:each) do
      assigns[:books] = [Factory.build(:book)]
      template.stub(:render).and_call_original
      template.stub(:render).with(hash_including(:partial => "tabs"))
      template.stub(:render).with(hash_including(:partial => "shared/pagination"))
    end

    it "should render book rows" do
      template.should_receive(:render).with(hash_including(:partial => "book_rows"))
      render
    end
  end
end
{% endhighlight %}

The key find was to use with(:hash_including()) which I found from a helpful link at [Stack Overflow](http://stackoverflow.com/questions/1893544/rspec-partials-problem).
