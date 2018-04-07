---
id: 780
title: An Open Letter to Helpdesk Managers on Developer Admin Access
date: 2010-01-01T20:10:14+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=780
permalink: /2010/01/01/an-open-letter-to-helpdesk-managers-on-developer-admin-access/
categories:
  - management
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/helpdesk.jpg" /><br /> <!-- http://www.flickr.com/photos/andypiper/4040455314/ -->
</div>

I know you wonder why developers come charging into the help desk right after you&#8217;ve delivered the sparkling new machine with 8GB of RAM, dual monitors and a quad core processor. They start babbling about how they need admin access or you might as well give them there old Pentium 4 box so they can get something done. Their face is flushed with frustration and they seem very passionate about this. You try to patiently explain that they can just fill out a ticket and they&#8217;ll send someone over to update their JDK or install Visio. They just throw up there hands stomp off, and before long you&#8217;re talking to a development manager. What is the big deal really?

Developers live and breath on their machines and the good ones are constantly trying new tools, updating old ones pulling down app servers, setting up local databases or LDAP servers. Most of them have a high end laptop at home and a cushy two monitor setup that is often better than the one provided at work. It frustrates them that the company doesn&#8217;t understand the gains in productivity they could get just updating the hardware. Then the day comes where they&#8217;re granted a new machine and they dream about it waiting weeks for it to show up.

They come in one morning and see the new machine setup and deployed. Their old machine is missing from the cube, and that causes some concern. Ignoring warning signs of danger they log in with their trusty network login and start running through a list of the most important things to get installed first. They login, fire up IE and go grab an install of Firefox. Starting the installer a dialog box shows up informing them that access is denied. Blood pressure doubles in the next minute. Then they try to stay calm as they dial up the help desk to get admin rights granted to the account.

A cheerful voice on the phone informs them that the current policy is that no one gets admin access to their desktop. The help desk will install all software. The developer explains that they had admin access on their old machine. Yes, but the new policy is being rolled out with the new hardware. At this point the developer slams down the phone and sprints over the to the help desk to explain the craziness of denying admin access in person.

As a development manager soon after they&#8217;ve ranted at the help desk I get involved and have to calm myself down for a few minutes, because if anything I get more frustrated with these one size fits all admin access policies then my developers. I simply send off an email at first listing the reasons the developers will need admin access:

  * Developers install and update their tools on a regular basis and ruby or java development involves a constant updating of libraries.
  * Developers need to install open source tools on a constant basis such as IDEs, editors, diff tools, browsers, etc.
  * Waiting days or weeks for a help desk staff to install something is completely untenable when doing weekly iterations.
  * It is an incredible waste of the help desk&#8217;s staff time to come over and update or install software on probably a daily basis for even a small development team. You&#8217;ll almost end up with one person per 10 developers to just do installs.
  * Developers are savvy enough not to fall for trojan horse software and other items that say an admin might install without realizing. 
  * The fact that the developer&#8217;s machine might be hard to recover if it has a massive hardware failure is a perfectly acceptable risk and developer&#8217;s don&#8217;t expect the help desk to restore it back with all of there tools intact.

To use an analogy not allowing your developer&#8217;s to have admin access to their desktops is like having to have a personal escort to unlock the bathroom for you every time you need to visit the restroom. 

So I apologize for the developers who appear half-crazed and unwilling to follow a simple admin access policy, but hopefully I&#8217;ve been able to give you some insight as to why they are so passionate about it.