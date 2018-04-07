---
id: 427
title: Manual Continuous Integration
date: 2006-09-02T07:57:30+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=427
permalink: /2006/09/02/manual-continuous-integration/
categories:
  - automated builds
  - software development
---
A few weeks ago I gave my opinions on James Shore&#8217;s [idea](http://www.jamesshore.com/Agile-Book/continuous_integration.html) of [manual continuous integration](http://edgibbs.com/2006/08/18/synchronous-integration-versus-asynchronous-integration/).

Today the continuous build for one of our projects has three steps:

  1. Check in code to CVS repository.
  2. Log into the build box and manually run a <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              cvs update
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    .</li> 
    
      * Wait for cruisecontrol to run a build and send out email notifications.</ol> 
    
    Our other projects have a two step build:
    
      1. Check in code to CVS repository.
      2. Wait for cruisecontrol to run a build and send out email notifications.
    
    The reason for the three step process is simple pragmatism. After you spend 40+ hours between yourself and a developer trying to get it to run you should look for something that works. The problems we ran into were numerous:
    
      * Turned out figuring out how to run maven2 from cruisecontrol was a bit annoying. We ended up having to use the mvnscript command instead of mvnhome. The note in cruisecontrol&#8217;s documentation was a hint at the problems we&#8217;d see:
    > Due to the current status of Maven (in heavy development) only the &#8220;script&#8221; start mode is supported.
    
      * Then for some reason we still haven&#8217;t been able to figure out the <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
          <table cellspacing="0" cellpadding="0">
            <tr>
              <td class="line-numbers">
                <div>
                  1<br />
                </div>
              </td>
              
              <td>
                <div class="text codecolorer">
                  scm
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        plugin in maven just didn&#8217;t work for updating from CVS from cruisecontrol. It would just bomb on the pserver password over and over despite the fact that the user it was launched under already had a valid
        
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
                  cvs login
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        performed.</li> 
        
          * Next we tried just adding an extra ant target to do the CVS checkout. That didn&#8217;t work because cruisecontrol would checkout the project from the first ant command, and then return success and complete. It turns out you can&#8217;t run an ant and maven task within the same project.
          * Then I tried setting up two project, one to just do the checkout, but I couldn&#8217;t get the dependencies to work in cruisecontrol.
          * Then I tried luntbuild which was a bit of pain to setup, but finally looked like it was going to work. Only as soon as it starts to run maven2 it fails and exits with an unsuccessful build.
          * Then I tried to look for an ant task to run maven from ant. Turns out you can run ant from maven, but the [tasks](http://maven.apache.org/ant-tasks.html) are only for utilizing Maven&#8217;s artifact handling features.</ul> 
        
        The worst part is that in the past 30 day Sprint we&#8217;ve missed important build failures including several checked in unit tests that were failing and lately even some missing files that were causing the compiler to fail.
        
        So we&#8217;re back to manual continuous integration instead of investing more time in the tools.