---
id: 319
title: Rake in Rails Switching InnoDB to MyISAM
date: 2006-04-08T00:39:45+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=319
permalink: /2006/04/08/rake-in-rails-switching-innodb-to-myisam/
categories:
  - ruby
  - software development
  - test driven development
---
About 11:00pm on April 7th I ran

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
          rake
        </div>
      </td>
    </tr>
  </table>
</div>

to run all my tests. I had a nasty problem where I went from all of my tests running on the depot sample application in the [Agile Web Development Rails](http://www.pragmaticprogrammer.com/title/rails/) book to spitting out tons of errors. It didn&#8217;t make any logical sense. The error I saw over and over again was that the first record didn&#8217;t exist so the errors looked like:

<pre>ActiveRecord::RecordNotFound: Couldn't find Product with ID=1
...
in `products`
  test/unit/product_test.rb:7:in `setup_without_fixtures`
</pre>

OK, next step was to just try to run a single unit test, so I jumped back to the

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
          product_test.rb
        </div>
      </td>
    </tr>
  </table>
</div>

unit tests. Run the 6 tests, ugghh, 3 of them error out. I know they were working last time I worked on the sample project. 

I commented out all but the first test and started adding them back in one by one. After I added more than ones that just checked the initial values they just started failing again. Gheesh!

So, next solution is look at the logs. Not a lot of information there, but the SQL, so I wanted to add logger statements at the start and end of my tests. Took a bit of hunting to find out how to do it, but [Robby Russell](http://www.robbyonrails.com/) had a nice explanatory post on [Rails, Logger, and Those Pesky Tests](http://www.robbyonrails.com/articles/2006/01/25/rails-logger-and-those-pesky-tests).

OK, I have logging, so I can see what&#8217;s going on. At this point I feared I was going to find out the order of the tests perhaps mattered and after deleting one entry the next test failed because it didn&#8217;t reset the records in setup(). This isn&#8217;t really how xUnit frameworks are supposed to work, but I was having trouble seeing the logic of why the tests are failing.

Run the tests, and the same failures. Look at the log, and yes, they are run in random order and each one ends with a ROLLBACK statement. Of course this makes sense, because under Rails 1.0 and up the default is to use transactional fixtures. At this point I decide to look at MySQL and the databases. Aha! The database tables are defined as MyISAM which doesn&#8217;t support transactions. I could have sworn they were already defined as InnoDB, but maybe I was confused.

OK, I switch them on the test database and then run rake again. No!!! The same huge number of errors. This doesn&#8217;t make a lick of sense. OK, look at the database again. OK, the tables are back to MyISAM. So it turns out rake is automatically using the development database to recreate the test database. So a simple change of the development database to InnoDB tables was in order. Run,

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
          rake
        </div>
      </td>
    </tr>
  </table>
</div>

again and all the tests pass.

Time for some sleep.