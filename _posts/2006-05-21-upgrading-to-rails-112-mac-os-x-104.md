---
id: 357
title: Upgrading To Rails 1.1.2 Mac OS X 10.4
date: 2006-05-21T21:23:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=357
permalink: /2006/05/21/upgrading-to-rails-112-mac-os-x-104/
categories:
  - ruby
  - software development
---
Given that I really only have one semi-real Ruby on Rails app on my machine I went ahead an threw caution to the wind and upgraded to the newest Rails 1.1.2. No problems until I ran my unit tests and got complete failures with messages like:

<pre>test_save_valid_order(StoreControllerTest):
ActiveRecord::StatementInvalid: Mysql::Error: Lost connection
to MySQL sever during query: DELETE from orders
</pre>

I tried the obvious things like restarting MySQL, but no dice. A bit of hunting found a ticket entitled [lost db connectivity after updating rails](http://dev.rubyonrails.org/ticket/2889). That got me thinking it might be something with the MySQL drivers. At [HiveLogic](http://hivelogic.com/articles/2005/12/01/ruby_rails_lighttpd_mysql_tiger) they had the following advice:

<pre>sudo gem install mysql -- --with-mysql-dir=/usr/local/mysql</pre>

Now all of my tests are running fine.