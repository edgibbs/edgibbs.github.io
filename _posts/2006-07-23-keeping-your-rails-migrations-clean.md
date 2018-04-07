---
id: 405
title: Keeping Your Rails Migrations Clean
date: 2006-07-23T09:45:12+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=405
permalink: /2006/07/23/keeping-your-rails-migrations-clean/
categories:
  - ruby
  - software development
---
I&#8217;m working my way through a for fun side project using Rails 1.1 and I&#8217;ve been using ActiveRecord migrations instead of the older style SQL scripts. I like them a lot because it allows me to continue to stay in Ruby. Still each time you want to make a change to a table you need to create a new migration script.

> There&rsquo;s a downside to migrations. Over time, your schema definition will be spread across a number of separate migration files, with many files potentially affecting the definition of each table in your schema. When this happens, it becomes difficult to see exactly what each table contains.
> 
> &#8211;[Agile Development with Rails 2nd Edition](http://www.pragmaticprogrammer.com/title/rails/) (Beta)

After a bit of hunting I settled on my current fix. Keep all the changes one per table in their Create ActiveRecord Migration files. Keep all the data migrations in a separate file. When you alter one of them and need to reset your database run two commands:

<pre>rake db:migrate VERSION=0
rake db:migrate
</pre>

Presto, your database is back to a clean state.