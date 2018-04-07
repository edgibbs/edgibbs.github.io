---
id: 664
title: Sometimes You Want the SysAdmin to Say No
date: 2008-09-08T19:19:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2008/09/08/sometimes-you-want-the-sysadmin-to-say-no/
permalink: /2008/09/08/sometimes-you-want-the-sysadmin-to-say-no/
categories:
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/sysadmin_babysitter.jpg" alt="http://www.flickr.com/photos/drewzhrodague/5413802/" />
</div>

As a developer, especially a developer who is comfortable building servers and slinging code in vi, you don&#8217;t want to hear the **no** word from the sysadmin. You want to be agile and install your own app. You want to configure the extra JNDI settings yourself. And you&#8217;re wrong.

I&#8217;ve worked in environments where sysadmins ruled with an iron fist on their environments and never let developers on production even to grab log files. Other places developers had wide open access. Wide open access is a bad, bad thing unless you&#8217;re still a small startup. Here&#8217;s the best model for a corporate IT shop.

  * Developers own development for the most part. Sysadmins may backup the server on some filesystem, but that&#8217;s about the extent of it. Source control, wikis, continuous integration all run here. Developers are the primary users and everyone else is just visiting.
  * Test is all about the testers. Testers should have access to tools like bug trackers and automated testing tools or servers. All the test servers should be locked down with developers and testers given read access to things like log files. Here the sysadmins begin to exert more control because test is the first step formal step in moving an app to production.
  * Staging is a pure environment and developers are locked out here.
  * Production is a no touch environment. Sysadmins have full control and troubleshooting issues means the developer sits with the sysadmin and doesn&#8217;t do the typing.

Developers need to stay focused on quality and not jump around troubleshooting environments. Good sysdamins will say no to developers touching production, but they&#8217;ll work closely with them to automate deployments and configuration. Remember they&#8217;re saying &#8216;no&#8217; for your own good.