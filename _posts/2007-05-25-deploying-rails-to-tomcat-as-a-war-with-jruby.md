---
id: 569
title: Deploying Rails to Tomcat as a WAR with JRuby
date: 2007-05-25T22:27:31+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/05/25/deploying-rails-to-tomcat-as-a-war-with-jruby/
permalink: /2007/05/25/deploying-rails-to-tomcat-as-a-war-with-jruby/
categories:
  - ruby
  - software development
  - tutorial
---
### Assumptions



  * You are experienced with Java and have at least dabbled around with Ruby on Rails.
  * These steps worked for me on a Mac OS X 1.0.4.9 system
  * I&#8217;ve walked through the steps 3 times from scratch, but your mileage may still vary.



### Install and Configure JRuby

First step download install JRuby. You can get it at:

  * http://dist.codehaus.org/jruby/

After pulling down the tarball,

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
          jruby-bin-1.0.0RC2.tar.gz
        </div>
      </td>
    </tr>
  </table>
</div>

, I unpacked it and installed at:

  * <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              /Applications/jruby1.0.2RC
            </div>
          </td>
        </tr>
      </table>
    </div>

Next, add the environment variable

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
          JRUBY_HOME
        </div>
      </td>
    </tr>
  </table>
</div>

to point to

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
          /Applications/jruby1.0.2RC
        </div>
      </td>
    </tr>
  </table>
</div>

. I added it to my

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
          .bash_profile
        </div>
      </td>
    </tr>
  </table>
</div>

since I&#8217;m running the bash shell by default on Mac OS X:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          # JRuby<br /><br /> export JRUBY_HOME=/Applications/jruby1.0.0RC2
        </div>
      </td>
    </tr>
  </table>
</div>

Since I don&#8217;t want to take out my normal Ruby C install I just export it in front of the path just for this terminal session:

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
          export PATH=$JRUBY_HOME/bin:$PATH
        </div>
      </td>
    </tr>
  </table>
</div>

Double check that JRuby is setup:

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
          jruby --version
        </div>
      </td>
    </tr>
  </table>
</div>

This should return something like:

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
          ruby 1.8.5 (2007-05-16 rev 3672) [i386-jruby1.0.0RC2]
        </div>
      </td>
    </tr>
  </table>
</div>

### Test With A Simple JRuby App

Go ahead and setup a directory for your JRuby apps:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          cd ~<br /><br /> mkdir jruby_stuff<br /><br /> cd jruby_stuff<br /><br /> mate test_java.rb
        </div>
      </td>
    </tr>
  </table>
</div>

The last step assumes your using textmate. You can replace it with any

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
          vi
        </div>
      </td>
    </tr>
  </table>
</div>

or any other editor you want.

Write a small JRuby app and save it:

[ruby]
  
require &#8216;java&#8217;
  
include_class &#8216;java.util.ArrayList&#8217;
  
list = ArrayList.new
  
list.add &#8220;Ruby&#8221;
  
list.add &#8220;+&#8221;
  
list.add &#8220;Java&#8221;
  
list.add &#8220;=&#8221;
  
list.add &#8220;JRuby&#8221;
  
list.each do |word|
    
puts &#8220;#{word}&#8221;
  
end
  
[/ruby]

Go ahead and run the simple ruby script and test the java integration of JRuby:

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
          jruby test_java.rb
        </div>
      </td>
    </tr>
  </table>
</div>

Should see:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          Ruby<br /><br /> +<br /><br /> Java<br /><br /> =<br /><br /> JRuby<br />
        </div>
      </td>
    </tr>
  </table>
</div>

### Rails Setup

Run:

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
          gem install rails -y --no-ri --no-rdoc
        </div>
      </td>
    </tr>
  </table>
</div>

This should take about a minute. There are lots of notes on how ri and Rdoc take a long time to run right now, but it wasn&#8217;t too bad, about 5 minutes on a duo core Macbook Pro, but you can keep the two switches and save a little time.

The next step is a bit odd. For some reason the rails and rake files don&#8217;t get installed as executable. You have to make them executable and then pick up the changes using the bash

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
          hash
        </div>
      </td>
    </tr>
  </table>
</div>

command.

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          chmod 775 $JRUBY_HOME/bin/rails<br /><br /> chmod 775 $JRUBY_HOME/bin/rake<br /><br /> hash -r
        </div>
      </td>
    </tr>
  </table>
</div>

### Sample Rails App Running in JRuby

Then create your test rails app in JRuby. I used that idea of a book store application:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          rails bookstore<br /><br /> cd bookstore
        </div>
      </td>
    </tr>
  </table>
</div>

Go ahead and do a smoke test by booking up the server.

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
          jruby script/server
        </div>
      </td>
    </tr>
  </table>
</div>

Should see a default rails page at 

  * http://localhost:3000



### ActiveRecord JDBC Setup

Kill WEBrick and install the ActiveRecord JDBC gem:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          gem install ActiveRecord-JDBC<br /><br /> Installing ri documentation for ActiveRecord-JDBC-0.3.1...<br /><br /> Installing RDoc documentation for ActiveRecord-JDBC-0.3.1...<br /><br /> Successfully installed ActiveRecord-JDBC-0.3.1
        </div>
      </td>
    </tr>
  </table>
</div>

Modify the

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
          config/database.yml
        </div>
      </td>
    </tr>
  </table>
</div>

:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          development:<br /><br /> &nbsp; adapter: jdbc<br /><br /> &nbsp; driver: com.mysql.jdbc.Driver<br /><br /> &nbsp; url: jdbc:mysql://localhost/bookstore_development<br /><br /> &nbsp; username: root<br /><br /> &nbsp; password:
        </div>
      </td>
    </tr>
  </table>
</div>

Modify

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
          config/environment.rb
        </div>
      </td>
    </tr>
  </table>
</div>

to add jdbc as an adapter type. The code goes just above

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
          Rails::Initializer.run
        </div>
      </td>
    </tr>
  </table>
</div>

[ruby]
  
if RUBY_PLATFORM =~ /java/
    
require &#8216;rubygems&#8217;
    
RAILS\_CONNECTION\_ADAPTERS = %w(jdbc)
  
end
  
Rails::Initializer.run do |config|
  
[/ruby]

Get the MYSQL JDBC driver at: 

  * http://www.mysql.com/products/connector/j/

I grabbed the file

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
          mysql-connector-java-5.0.6-bin.jar
        </div>
      </td>
    </tr>
  </table>
</div>

and added it to my

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
          $JRUBY_HOME/lib
        </div>
      </td>
    </tr>
  </table>
</div>

. You can also add it to your

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
          $CLASSPATH
        </div>
      </td>
    </tr>
  </table>
</div>

instead.

Start your MySQL server if it isn&#8217;t running. I just do this from the MySQL Preferences pane.

![](/images/mysql_preferences.png)

Time to setup the databases:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          mysql -u root<br /><br /> create database bookstore_development;<br /><br /> create database bookstore_test;<br /><br /> exit
        </div>
      </td>
    </tr>
  </table>
</div>

Go back to the rails app and create a model for Books.

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
          jruby script/generate model Book
        </div>
      </td>
    </tr>
  </table>
</div>

Create a simplistic migration script in the file

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
          db/migrate/001_create_books.rb
        </div>
      </td>
    </tr>
  </table>
</div>

:

[ruby]
    
def self.up
      
create_table :books do |table|
        
table.column :title, :string
        
table.column :author, :string
      
end
    
end
  
[/ruby]

Run the migration:

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
          rake db:migrate
        </div>
      </td>
    </tr>
  </table>
</div>

Then create the scaffolding for Book:

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
          jruby script/generate scaffold Book<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Startup the server:

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
          jruby script/server<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Go to the URL and see the scaffolding using JDBC:

  * http://localhost/books/



### Running the Tests

You should be able to run the rake command and run all the tests now. Instead you get an error about like this:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          rake aborted!<br /><br /> Task not supported by 'jdbc'<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Turns out this is due to some hard coded values in the rails rake tasks. It has an easy fix by way of [Ola Bini](http://ola-bini.blogspot.com/):

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          cd $JRUBY_HOME/lib/ruby/gems/1.8/gems/ActiveRecord-JDBC-0.3.1/lib<br /><br /> svn checkout svn://rubyforge.org/var/svn/jruby-extras/trunk/activerecord-jdbc/lib/tasks<br />
        </div>
      </td>
    </tr>
  </table>
</div>

This pulls down a file

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
          jdbc_databases.rake
        </div>
      </td>
    </tr>
  </table>
</div>

that I could only find in the subversion repository for now. Copy that file to the bookstore lib/tasks directory:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          cp tasks/jdbc_databases.rake ~/jruby_stuff/bookstore/lib/tasks<br /><br /> cd ~/jruby_stuff/bookstore<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Time to run all the default tests with rake:

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
          rake<br />
        </div>
      </td>
    </tr>
  </table>
</div>

All the tests pass!

### Create the WAR

Kill WEBrick again and install the rails-integration plugin to deploy setup rake tasks to create wars:

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
          jruby script/plugin install svn://rubyforge.org/var/svn/jruby-extras/trunk/rails-integration/plugins/goldspike<br />
        </div>
      </td>
    </tr>
  </table>
</div>

It appears the war created uses the production settings so you&#8217;ll need to create the production database:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          mysql -u root<br /><br /> create database bookstore_production;<br /><br /> exit<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Then fix the

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
          config/database.yml
        </div>
      </td>
    </tr>
  </table>
</div>

to include jdbc adapters for test and production:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          test:<br /><br /> &nbsp; adapter: jdbc<br /><br /> &nbsp; driver: com.mysql.jdbc.Driver<br /><br /> &nbsp; url: jdbc:mysql://localhost/bookstore_test<br /><br /> &nbsp; username: root<br /><br /> &nbsp; password:<br />
        </div>
      </td>
    </tr>
  </table>
</div>

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          production:<br /><br /> &nbsp; adapter: jdbc<br /><br /> &nbsp; driver: com.mysql.jdbc.Driver<br /><br /> &nbsp; url: jdbc:mysql://localhost/bookstore_production<br /><br /> &nbsp; username: root<br /><br /> &nbsp; password:<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Go ahead and run the migration for production as well:

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
          rake db:migrate RAILS_ENV=production<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Then you run:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          rake war:standalone:create<br /> <br /><br /> Assembling web application<br /><br /> &nbsp; Adding Java library commons-pool-1.3<br /><br /> &nbsp; Adding Java library activation-1.1<br /><br /> &nbsp; Adding Java library jruby-complete-0.9.9<br /><br /> &nbsp; Adding Java library bcprov-jdk14-124<br /><br /> &nbsp; Adding Java library rails-integration-1.1.1<br /><br /> &nbsp; Adding web application<br /><br /> &nbsp; Adding Ruby gem rails version 1.2.3<br /><br /> &nbsp; Adding Ruby gem rake version 0.7.3<br /><br /> &nbsp; Adding Ruby gem activesupport version 1.4.2<br /><br /> &nbsp; Adding Ruby gem activerecord version 1.15.3<br /><br /> &nbsp; Adding Ruby gem actionpack version 1.13.3<br /><br /> &nbsp; Adding Ruby gem actionmailer version 1.3.3<br /><br /> &nbsp; Adding Ruby gem actionwebservice version 1.2.3<br /><br /> &nbsp; Adding Ruby gem ActiveRecord-JDBC version 0.3.1<br /><br /> Creating web archive<br />
        </div>
      </td>
    </tr>
  </table>
</div>

This may take a few minutes the first time, but it appears to be much faster in subsequent builds.

### Deploy to Tomcat

At this point you just need to drop the mysql JDBC driver in TOMCAT&#8217;s lib directory at:

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
          $TOMCAT_HOME/common/lib/mysql-connector-java-5.0.6-bin.jar<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Copy the bookstore.war file to

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
          cp bookstore.war $TOMCAT_HOME/webapps/<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Then startup Tomcat:

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
          $TOMCAT_HOME/bin/startup.sh<br />
        </div>
      </td>
    </tr>
  </table>
</div>

Goto the app at:

  * http://localhost:8080/bookstore/books/

Now do your happy dance! Or maybe just take a break and grab a soda.

### Sources

I got this recipe for deployment together from several sources:

  * The general recipe was cobbled together from [Buggy Velarde](http://buggyvelarde.org/?p=20).
  * [Ola Bini](http://ola-bini.blogspot.com/) for the getting started [tutorials](http://jruby.codehaus.org/The+JRuby+Tutorial+Part+1+-+Getting+Started) with JRuby.
  * [Nick Sieger](http://blog.nicksieger.com/) for his post on [ActiveRecord JDBC](http://www.headius.com/jrubywiki/index.php/Running_Rails_with_ActiveRecord-JDBC).
  * And the [Rails Integration](http://www.headius.com/jrubywiki/index.php/Rails_Integration) article on the JRuby wiki.



### Things To Come

  * Deploy a big rails app.
  * Deploy to a commercial container like Websphere Appliation Server.