---
id: 419
title: Synchronous Integration Versus Asynchronous Integration
date: 2006-08-18T22:55:53+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=419
permalink: /2006/08/18/synchronous-integration-versus-asynchronous-integration/
categories:
  - automated builds
  - software development
---
[James Shore](http://www.jamesshore.com/Agile-Book/continuous_integration.html) posted on the idea that you should favor synchronous integration:

>   1. Run the build on your local workstation and make sure everything builds and passes tests. (This step is optional but helpful.)
>   2. Check that the integration token is available. If it isn&#8217;t, wait until it is, then get the latest changes from the repository. The revision control system should automatically integrate (or merge) most changes. If you have any merge conflicts, investigate and fix them manually.
>   3. Run the build. If it doesn&#8217;t succeed, you have an integration problem. Consider asking the last people who checked in for help. Start the integration process over when you solve it. (This step is also optional but helpful.)
>   4. Assuming the build passed, get the integration token. This will prevent anybody from getting your code before you&#8217;ve proven that your check-in worked.
>   5. Check your code in to the repository. At this point, the build in revision control is unproven. You have to prove that it works before releasing the integration token and letting others get your changes.
>   6. Walk over to the integration machine, get the changes from the repository, and run the build. If it fails, you have a configuration problem: the build only works on your machine. Roll back your changes (revert your checkin), verify that the build works again, and put the integration token back. Fix the problem on your local machine and start the integration process over when you solve it.
>   7. Assuming the build worked, you win! Put the integration token back and celebrate by ringing the bell. You don&#8217;t have to, but it adds a little fun and it lets others know that something has changed. I like to channel Monty Python when others do this.

A syncronous build seems to clash with Agile where you&#8217;re trying to avoid waste and a lot of waiting around for a syncronization token. Moving into serial mode while you checkin and build appears counter intuitive.

James explains the advantages as:

> It is slightly wasteful, because integration is a serial operation and you have to wait for it to complete. On the other hand, with a fast build (ten\_minute\_build) and a policy of rolling back integrations that don&#8217;t succeed, the wait should never be too long.
> 
> In practice, synchronous integration is less wasteful than the task-switching and broken builds that tend to occur with asynchronous integration. It&#8217;s a much bigger pain to have to lose my flow and switch contexts in order to help somebody else debug a broken build.

I just can&#8217;t see the advantage based on my limited experiences on builds with Cruisecontrol. Our teams are not working on really large codebases in general. We&#8217;re probably a fairly typical medium size development shop. A larger project might have four developers on it so maybe this would show up in those cases.

Typically developers check in a few times a day and we rarely have merging issues. We do have broken builds every few days, but they&#8217;re generally resolved by the developer within a few minutes to an hour. Going to a synchronous build would be wasteful for us.