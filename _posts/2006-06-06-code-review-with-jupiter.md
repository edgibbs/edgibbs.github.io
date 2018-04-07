---
id: 368
title: Code Review with Jupiter
date: 2006-06-06T20:41:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=368
permalink: /2006/06/06/code-review-with-jupiter/
categories:
  - code reviews
  - software development
---
I&#8217;ve held off using a tool for our code reviews because I didn&#8217;t see one that was available that supported a fairly lightweight process. One exception to this was the Eclipse [Jupiter](http://csdl.ics.hawaii.edu/Tools/Jupiter/Core/doc/UsersGuide.html) code review plugin which we can now use because almost all of our developers have migrated to RAD. (Also suggested by Tim Shadel over at [Zdot](http://timshadel.com/).)

We tried out Jupiter on our last code review. It installs like any other Eclipse based plug-in. We reviewed about 12 classes from one developer and there were a total of two reviewers. (This was a few too many classes, but it was an experiment).

It uses a XML file based approach to contain all the review information. You simply pick the classes you want to review, add the names of the reviewers and check in the XML file into version control. Simple enough, but you&#8217;ll still have to inform everyone about the review via email or in person.

Then you right click on the code and add issues. When you meet up to go through the issues you can simply drive the review from someone&#8217;s laptop with an overhead projector. As it turned out I was the only one who had time to actually review the code, so it was just my issues to review. Actually neither of them had gone as far as installing the Jupiter plugin. 

It was really nice to have some organization around the review. When you select an issue it can jump right to the code and you have the comment in front of you to jog your memory. If it turns out to be something that needs to be changed, you just select &#8216;Valid&#8217; from the pull down menu and flag the issue. Then you jump to the next issue.

At the end of the process the developer can just open up all the valid changes and work through them offline.

The best part of the tool was using it for the actual review since it was much easier to focus and drive through the agenda in a single hour. The weak point was as a plugin and file based system it didn&#8217;t offer a lot of automation support. For now the vote among the developers is to give Crucible a chance when it shows up soon as a beta.