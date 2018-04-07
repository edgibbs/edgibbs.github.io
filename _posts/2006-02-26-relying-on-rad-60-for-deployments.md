---
id: 281
title: Relying on RAD 6.0 for Deployments
date: 2006-02-26T21:47:14+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=281
permalink: /2006/02/26/relying-on-rad-60-for-deployments/
categories:
  - automated builds
  - software development
  - websphere
---
Up until we brought in the suite of IBM Websphere tools and many of the developers migrated over to Rational Application Developer 6.0 (RAD), we were doing all deployments via ant. I confirmed last week that we&#8217;ve switched over in the last 9 months to almost complete reliance on building WARs or EARs from RAD via a right click on the project option.

I was reminded of the danger of this approach recently when on one project the tech lead was out on vacation and the other developer hadn&#8217;t been involved much in the setup of the project. It turned out we needed to create an EAR of the project instead of a WAR so our sysadmins could deploy the application. It didn&#8217;t need to be an EAR because there were zero EJBs involved, but that was the hard requirement.

Anyway next problem turned out to be we needed to rename the EAR file created by RAD. Turns out it relies on the name of the RAD project and you can&#8217;t actually change the name of the EAR file generated. To change it you have to change the name of the project. Since this is checked into CVS that would result in a top level directory name change. We tried a few workarounds, but the problem wasn&#8217;t resolved until a day later when the developer came back from vacation.

Just a small warning that it can be very easy to fall into some reliance on a tool and end up in these sorts of situations. The fix is luckily pretty easy as well.

  * Require ant or maven build files.
  * Add projects to cruisecontrol within the first day or two and include a deployment target. (Actual deployment may be harder as we don&#8217;t have a license to run Websphere on our build box.)
  * Test that any developer can checkout a project and deploy the project without any reliance on RAD.