---
id: 583
title: 50+ Projects In a Single Eclipse Workspace
date: 2007-07-07T22:23:02+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/07/50-projects-in-a-single-eclipse-workspace/
permalink: /2007/07/07/50-projects-in-a-single-eclipse-workspace/
categories:
  - software development
---
Fifty or more Eclipse projects for a single medium sized web application is too many! My default rule for an application with a few hundred classes:

  * Use the package system. You can keep your source code in two directories **src** and **test**.

Googling around for guidelines for projects and workspaces hasn&#8217;t revealed much. And little advice on how to refactor a nasty tangle of projects. The current plan:

  1. Take the java only projects and combine the source code directories one at a time.
  2. Run the tests. OK, legacy system of course very few tests to run. Will have to make do with high level smoke tests in the GUI and some manual checking.
  3. Next, take the same approach with the web projects.
  4. Finally, celebrate a little with a simplified project structure.

My perspective is limited to my experience. Perhaps there are great advantages to having many small projects for a small to medium sized web application. Feel free to comment with any better ideas.