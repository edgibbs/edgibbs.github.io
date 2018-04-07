---
id: 1050
title: Local Tmux Usage
date: 2015-09-14T20:30:08+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1050
permalink: /2015/09/14/local-tmux-usage/
categories:
  - software development
---
My team finally convinced me the efficacy of using tmux locally even without doing remote pairing. I run quite a few sessions to organize my work at different times:

  * **work** (generally main vim window for the day job)
  * **web** (It&#8217;s web development so always running a web server)
  * **login** (A trick to keep the lame Cisco VPN client from kicking you off every 15 minutes)
  * **qa** (for running capybara tests primarily)
  * **elixir** (messing with elixir)
  * **clojure** (messing with Clojure)

During the work day I generally have **web** and **work** up and **login** and **qa** detached unless I need them. Then at home I detach everything and just use **elixir** or **clojure**. I don&#8217;t use a lot of windows for each session or panes, unless it makes sense say auto testing and code or code and REPL session. Generally I leave these sessions in place unless I have a rare reboot. Nothing world changing, but it&#8217;s just a bit better than my old way of keeping up a terminal with a bunch of tabs.