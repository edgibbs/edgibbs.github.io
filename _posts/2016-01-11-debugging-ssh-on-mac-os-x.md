---
id: 1088
title: Debugging SSH on Mac OS X
date: 2016-01-11T07:21:25+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1088
permalink: /2016/01/11/debugging-ssh-on-mac-os-x/
categories:
  - security
  - software development
---
As a developer SSH is something I have to think about maybe once every few months when I&#8217;m setting up a connection for someone pairing in tmux for example. Cutting and pasting public keys can cost real time when a line feed gets inserted inadvertently or something gets clipped.

So assuming ssh isn&#8217;t working and you can&#8217;t connect it turns out there&#8217;s a pretty helpful debug mode on the client and the server. For the client you simply add the -v mode and get a pretty good idea about what&#8217;s going on:

{% highlight console %}
ssh -v tmux@10.0.1.4 -i ~/.ssh/tmux_ssh
{% endhighlight %}

If that isn&#8217;t enough then you can just launch another ssh service on another port in debug mode.

{% highlight console %}
sudo /usr/sbin/sshd -d -p 4444
{% endhighlight %}

Then you can just connect your client to the debugging server with a port specification:

{% highlight console %}
ssh -v -p 4444 tmux@10.0.1.4 -i ~/.ssh/tmux_ssh
{% endhighlight %}

From that you should be able to get enough information to quickly debug the problem.

(My first experience with SSH was way back in 2000 when our 16 year old Unix sysadmin switched all the developers to SSH from raw telnet overnight because he could. All of us were on Windows or Classic Mac OS back then without any default SSH client software, and it cost us at least a day of pain to get everyone back to work.)
