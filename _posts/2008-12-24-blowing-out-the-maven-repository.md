---
id: 694
title: Blowing Out the Maven Repository
date: 2008-12-24T22:22:16+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=694
permalink: /2008/12/24/blowing-out-the-maven-repository/
categories:
  - automated builds
  - software development
---
After about 45 minutes of frustration trying to work through some maven exercises in the Sonatype book I kept arriving at the following message:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          Reason: Not a v4.0.0 POM. for project org.apache.maven.plugins:maven-site-plugin at /Users/edgibbs/.m2/repository/org/apache/maven/plugins/maven-site-plugin/2.0-beta-6/maven-site-plugin-2.0-beta-6.pom
        </div>
      </td>
    </tr>
  </table>
</div>

I had the sample code downloaded and got the same error, so I investigated possibly not having access to the maven repositories. I&#8217;m on my in-laws network, possibly there&#8217;s something being blocked. I tried other mirrors without any success. Finally I just deleted the local maven repository and re-ran

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          mvn clean install
        </div>
      </td>
    </tr>
  </table>
</div>

and everything just worked. I had forgotten how finicky the local repository can be.