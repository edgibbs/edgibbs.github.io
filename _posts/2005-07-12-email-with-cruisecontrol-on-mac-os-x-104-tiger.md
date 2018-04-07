---
id: 33
title: Email with Cruisecontrol on Mac OS X 10.4 Tiger
date: 2005-07-12T22:01:29+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=33
permalink: /2005/07/12/email-with-cruisecontrol-on-mac-os-x-104-tiger/
categories:
  - software development
---
Getting email from cruisecontrol turned out to be a little more work than planned. Turns out sendmail has been eliminated in favor of Postfix on 10.4 and maybe 10.3, a mail server I know nothing about. After a short run through this [article](http://www.reitter-it-media.de/software/osxpostfix.html#why) I was up and running. 

For now I&#8217;m just running it in the background just running it in the background with root seems reasonable enough:

<pre>sudo /Applications/cruisecontrol-2.2.1/main/bin/cruisecontrol.sh &
</pre>

That way it runs most of the time and I can kill it if I need do by issuing a 

<pre>sudo kill #</pre>

command. Since I&#8217;m really just running it so I can help my development team understand it instead of relying on a single expert it should work well enough.