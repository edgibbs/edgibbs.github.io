---
id: 163
title: First Steps with RAD 6.0
date: 2005-10-19T17:31:46+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=163
permalink: /2005/10/19/first-steps-with-rad-60/
categories:
  - software development
---
Since we spent millions on Websphere we&#8217;re now having integrate RAD 6.0 for developing into WebSphere Portal and utilizing JSF. I kept hearing bad things from developers about how you were tied into the RAD way of doing things. And phrases like &#8216;Drink the IBM Kool-Aid&#8217; or &#8216;Swallow the Blue Pill&#8217; abounded. Some of the things which seemed painful were:

  1. Based on Eclipse 3.0 so we have to step back to Java 1.4.2.
  2. To build a web project you have to have wonderful directories like <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              JavaSource
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    and
    
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
              WebSource
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    at the top level.</li> 
    
      * You can only deploy through RAD.</ol> 
    
    The truth turned out to be not quite so bad. We still can&#8217;t do any 1.5 specific things so no generics, enums or the like. The default IBM directories are there, but you can add your own, so there horrible names are a little more palatable. Why exactly did the default
    
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
              /src
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    directory have to be
    
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
              JavaSource
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    ? Finally I was able to add a build.xml file and it recognized it as ant specific. It turned out I had to change perspectives to the Java perspective to actually run a target, but that&#8217;s just one of those annoying Eclipse things. So now I&#8217;m pretty sure I can deploy without using some god awful RAD wizard.
    
    Eclipse just isn&#8217;t a very user friendly IDE. Just to add a file I had to go through the following menus:
    
    <pre>'Right Click' > New > Simple > File</pre>
    
    That took me about 10 minutes of hunting and I thought I was actually going to have to add build.xml at the file system level just to add a single file. As long as I can still run a normal ant build file and have it deploy in Cruisecontrol I&#8217;ll be OK with it. I&#8217;ll probably force myself to run it as a default IDE for a while so I can help developers with workarounds and then I&#8217;m running screaming back to IntelliJ.