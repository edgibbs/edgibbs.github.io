---
id: 401
title: Checklist for Running Ruby on Rails on Bluehost
date: 2006-07-18T21:02:26+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=401
permalink: /2006/07/18/checklist-for-running-ruby-on-rails-on-bluehost/
categories:
  - ruby
  - software development
---
Kudos to Bluehost for adding Rails hosting, but you might have found getting more than a trivial example running is an exercise in frustration. The following checklist details at least one successful path to getting a full Rails app up and running. (Much of the basic outline comes from the following Bluehost knowledgebase [article](http://helpdesk.bluehost.com/kb/index.php?x=&mod_id=2&root=8&id=232), but it tends to leave out some details, especially newer things like ActiveRecord migrations.)

#### Setup Directories on Bluehost

Bluehost suggests setting up a working directory for your rails projects. Reasonable enough just use the wonderful CPanel ssh terminal and create it at the top level of your home directory:

<pre>% cd ~
% mkdir rails
% cd rails
</pre>

Next you want to startup your first rails project. This may seem a bit bizarre, since you may have a perfectly good rails project already. Lets just assume you want to upload the sample project from [Agile Web Development with Rails](http://www.pragmaticprogrammer.com/title/rails/), the Depot project.

<pre>% rails depot
% cd depot
</pre>

#### Point a New Subdomain to Your Rails App

Now it&#8217;s time to setup a subdomain for your little application. Bluehost gives you plenty of these so one per rails app is no big deal. We&#8217;re just going to assume we&#8217;re using example.com so the final subdomain will be depot.subdomain.com. Just go into CPanel and add depot as a new subdomain. Now we want to point to it in our ssh session again:

<pre>% cd ~/public_html
% ln -s /home/YOUR_USERNAME/rails/depot/public depot
</pre>

As a test that things are going right so far you can check out http://depot.example.com/ and you see the familiar rails default page. Nice but not exactly what you were hoping for.

#### Setting Up the Databases

First you need to add a database user. cPanel prepends your own Bluehost username to everything so just be aware. Add the database user by going to cPanel choosing the MySQL databases and adding a user. If you pick &#8216;rails&#8217; the name will be

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
          username_rails
        </div>
      </td>
    </tr>
  </table>
</div>

.

Next, just add two databases dev and prod. You won&#8217;t need a test database probably because you won&#8217;t be running your unit/functional tests on the Bluehost server. So same MySQL link in cPanel and just name it &#8216;depotdev&#8217;. (You can&#8217;t use an underscore since it just ignores it anyway.) Since it appends the username it will become

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
          username_depotdev
        </div>
      </td>
    </tr>
  </table>
</div>

. Then you repeat the steps again for the production database and name it &#8216;depotprod&#8217; so that you have another database

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
          username_depotprod
        </div>
      </td>
    </tr>
  </table>
</div>

.

Finally you give the

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
          username_rails
        </div>
      </td>
    </tr>
  </table>
</div>

user access to the the two databases
  
by first selecting

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
          username_rails
        </div>
      </td>
    </tr>
  </table>
</div>

from the user pulldown menu and then

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
          username_depotdev
        </div>
      </td>
    </tr>
  </table>
</div>

from the database pulldown. Go ahead and give it all permissions and click on &#8216;Add User to Db&#8217;. Repeat for

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
          username_depotprod
        </div>
      </td>
    </tr>
  </table>
</div>

.

#### Configuring the Database Connection

Of course here you&#8217;re going to edit

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

on your local machine. It should look something like:

<pre>development:
  adapter: mysql
  database: username_depotdev
  username: username_rails
  password: password
  host: localhost<br />
production:
  adapter: mysql
  database: username_depotdev
  username: username_rails
  password: password
  host: localhost
</pre>

Then FTP the file up and replace

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
          ~/rails/depot/config/database.yml
        </div>
      </td>
    </tr>
  </table>
</div>

.

#### Migrating the Database Schema

Migrating your database using ActiveRecord migrations starts with FTPing over everything in your

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
          depot/db/migrate
        </div>
      </td>
    </tr>
  </table>
</div>

directory locally. Then log into your server using the cPanel SSH client and run:

<pre>% cd ~/rails/depot
% rake db:migrate
% rake db:migrate RAILS_ENV=production
</pre>

Both of the migrate commands should show some schema migration logging comments. If not you probably need to check the syntax in your database.yml file for errors. This migrates the schema to both the dev and production instances.

#### Migrating the Application Code

Next step is to FTP over all of the files in

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
          depot/app
        </div>
      </td>
    </tr>
  </table>
</div>

on your local machine to the server at

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
          ~/rails/depot/app
        </div>
      </td>
    </tr>
  </table>
</div>

.

Since you&#8217;re application may need some sample data you can add it through phpMyAdmin, SQL scripts, or a Rails scaffolding.

#### Switching to a Default Production Environment

Rails by default assumes you&#8217;re running in development mode. There are lots of nice ways to change the RAILS_ENV environment variable, but since Bluehost is a hosted solution there is a pretty simple hack that is guaranteed to work. Simply uncomment the following line in your

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

file:

<pre># Uncomment the line below to force Rails
# into production mode when you don't
# control web/app server and can't set it
# the proper way
# ENV['RAILS_ENV'] ||= 'production'
</pre>

Then FTP the file over to your Bluehost account. You&#8217;ll probably want to comment out the line in

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
          environment.rb
        </div>
      </td>
    </tr>
  </table>
</div>

again for you local development.

#### Positive Feedback

Just point your web browser at the URL assuming you have controller named &#8216;store&#8217; and a method named &#8216;list&#8217;.

<pre>http://depot.example.com/store/list
</pre>

Now do a little victory dance or eat some M&Ms, your choice.