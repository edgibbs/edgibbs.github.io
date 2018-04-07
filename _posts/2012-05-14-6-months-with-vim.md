---
id: 940
title: 6 Months with Vim
date: 2012-05-14T05:49:58+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=940
permalink: /2012/05/14/6-months-with-vim/
categories:
  - ruby
  - software development
---
<div align="center">
  <img src="http://edgibbs.com/images/vim_posse.jpg" /><br /> <!-- http://www.flickr.com/photos/termie/2922917167/ -->
</div>

<pre><b>College Roomate</b>: So you know vi?
<b>Me</b>: Of course, that would be command shift-Z-Z
</pre>

This is a conversation I had about twenty years ago. For most of my Unix editing I got by with pico and I found the modal nature of vi downright frustrating. Hence the importance of knowing the command to escape from modal hell.

At my current company vim was the default text editor, I even paired in the interview on vim. Over the years I&#8217;ve bounced between text editors and IDEs depending on the languages and environments. One key point though was that when I reached for a text editor it was always one with a GUI front end like BBEdit or TextMate. Despite working in vim most of the day I still default to MarsEdit for writing blog posts.

I jumped into vim with some lingering fear remembering my dislike of its modal nature and the lack of any mouse support. I tried out [VimGolf](http://vimgolf.com/) and spent some time trying to memorize basic navigation and selection commands. It came pretty slowly at first. I bogged down my pair quite a bit fumbling around with arrow keys or splitting the screen the wrong way. About two months in I had developed some basic proficiency, but I found myself wondering if RubyMine or TextMate wouldn&#8217;t be a better option.

At about the 6 month mark I looked back and realized I was finally comfortable in vim as I found myself defaulting to it for most of my text editing even when I wasn&#8217;t working on code. I still have a few cases where I prefer using a visual editor or IDE for tasks like:

  * blogging
  * email
  * exploring large projects
  * larger refactorings

Looking back there were several items that accelerated my vim mastery. One was our switch to sharing a single base .vimrc so when you pairing with anyone you had the same configuration of the editor. It also included several features like macros for commenting, formatting, auto-complete, and running inline RSpec. After setting up that .vimrc I saw how vim could be a more powerful tool. 

Another big step was learning to love &#8216;hjkl&#8217; over the arrow keys. That took about a week or so to break the habit and it was painful, but the speed difference was worth it. The mouse is already gone, so might as well toss the throwback to the arrow keys. (I found the [hack](http://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) here on Stack Overflow.)

A critical change that I arrived at fairly late was remapping my caps lock. Normally you rarely touch caps lock, but it is in a very convent position especially compared to the escape key. I remapped my caps lock to tap it to get an escape and holding it down yields a control which are the two most commonly used modifier keys in vim. That made my fingers very happy.

Finally, the biggest learning expeditor was pairing with a number of developers who had more expertise than myself. Since the team had standardized on vim before I arrived they had all gone far past where I was on the learning curve and were able to quickly demonstrate how to use vim or which keystroke to use as I fumbled along. I greatly appreciated their patience and willingness to let me bang something out that they could have typed in half the time.

I still don&#8217;t feel anything like a vim expert, but I do feel comfortable in a modal editor. Never thought I would be typing those words all these years later.