---
id: 26
title: Setting up CVS with pserver on Mac OS X 10.4 Tiger
date: 2005-07-04T23:10:52+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=26
permalink: /2005/07/04/setting-up-cvs-with-pserver-on-mac-os-x-104-tiger/
categories:
  - software development
---
Under the principle of eating one&#8217;s own dogfood, and in order to force myself to learn a few tools that remarkably few of my developers at work understand like CruiseControl, I&#8217;m taking a ride through setting up my own little pet project to do of all things keep track of employee comments I keep on a weekly basis so I have a history to refer to at review time.

For the first little part I need to get CVS up and running and I&#8217;m using this fellow&#8217;s [site](http://www.novajo.ca/cvs.html) to get started. Not too painful, about 20 minutes and I had my CVS repository setup. Next is remembering the command lines to check in an intial test project.

Looks like the command to import a test project is:

<pre>cvs import -m "Test Project" test vendor-tag start</pre>

Turns out this doesn&#8217;t work right away, Apple has changed my default shell to bash of all things. Much more linux like I suppose. Have to move things to the bash profile. Not sure why they used tcsh in the first place, but I had gotten used to it, oh well, back to bash.

Anyway after running the command again:

<pre>cvs import -m "Test Project" test vendor-tag start</pre>

The repository is now created. So I have a CVS directory.

The next step is to setup remote access. Since I&#8217;m just running on my local network I&#8217;m just setting up a default pserver access.

**Step 1** is to create the file

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
          /etc/xinetd.d/cvspserver
        </div>
      </td>
    </tr>
  </table>
</div>

. The following text goes in there: (In my case it already existed from an earlier setup under 10.2)

<pre>service cvspserver
{
  disable = no
  socket_type = stream
  wait = no
  user = root
  server = /usr/bin/cvs
  server_args = -f --allow-root=/usr/local/cvsmain pserver
  groups = yes
  flags = REUSE
{
</pre>

**Step 2** is to restart xinetd. The wonderful Unix command is below that I always forget, -HUP something:

<pre>sudo kill -HUP `cat /var/run/xinetd.pid`</pre>

**Step 3** Add the username and encrypted password to a

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
          passwd
        </div>
      </td>
    </tr>
  </table>
</div>

file under the CVSROOT folder in the cvs repository: (Apparently this is new from Panther on and it works fine for me in Tiger)

<pre>sudo touch /usr/local/cvsmain/CVSROOT/passwd</pre>

**Step 4** is putting in the

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
          username:'encrypted password'
        </div>
      </td>
    </tr>
  </table>
</div>

on each line of the file. I only needed to do one. And of course you don&#8217;t have the encrypted password so you can use a short perl one liner to get it:

<pre>perl -e 'print crypt "password", "sa"'</pre></p> 

In the &#8220;password&#8221; field you simply replace it with your password. The &#8220;sa&#8221; clause is just some two letter expression, apparently used for the encryption process. This will print out the encrypted password something like:

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
          adfdie4JmERS
        </div>
      </td>
    </tr>
  </table>
</div>

which you can then add to the

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
          passwd
        </div>
      </td>
    </tr>
  </table>
</div>

file so that the first line should look like:

<pre>edgibbs:adfdie4JmERS</pre></p> 

**Step 5** you should be able to login now with the following command:

<pre>cvs -d :pserver:edgibbs@10.1.1.5:/usr/local/cvsmain login</pre></p> 

As a final note it took about 30 minutes of tinkering and googling to get to this point where things worked. The key sticking point seemed to be the extra

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
          passwd
        </div>
      </td>
    </tr>
  </table>
</div>

file that had to be created and have an encrypted password in it. That seems to be new for 10.3 or 10.4 as back in the 10.2 days I didn&#8217;t need this step.