---
id: 1019
title: SourceTree versus Gitk
date: 2015-06-08T18:27:56+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1019
permalink: /2015/06/08/sourcetree-versus-gitk/
categories:
  - code reviews
  - software development
---
<div align="center">
  <img src="/images/sourcetree_icon.png" />
</div>

Git is a command line focused tool with hundreds of options. You can even visually see a graph of commit history in the terminal using git log with &#8211;graph. The default visual git tool is gitk which makes a reasonable GUI client for digging through history or doing ad-hoc code reviews. 

A few years ago someone suggested looking at Atlasssian&#8217;s [SourceTree](https://www.atlassian.com/software/sourcetree/overview) as a better option. I&#8217;ve used Atlassian tools in the past and generally found them to be well designed a useful. As it&#8217;s a free tool it was an easy option. 

SourceTree has been marketed in many ways as a visual tool for users new to git. I think it&#8217;s probably a bit dangerous to use in this way. You&#8217;re better off learning the simple workflow through something like [Try Git](https://try.github.io/levels/1/challenges/1) and sticking to the command line. SourceTree can be a a great supplement showing you in a visual way exactly what&#8217;s going on.

I use SourceTree in an entirely read-only mode. It&#8217;s easy to see the various branches and merges and walk through history. Since we currently don&#8217;t use Gitlab or a similar tool for git I use it for ad-hoc code reviews. It&#8217;s easy enough to step through commits fairly quickly. When I have comments I simply screen capture the view from SourceTree and attach it to a simple email. It&#8217;s primitive, but effective enough. Other than that my most common use case is perusing stashes as I sometimes let things stack up there and I can quickly bring them up to see if there&#8217;s anything worth keeping. 

After three years it still serves my purpose much better than gitk and I find the layout more efficient and powerful.