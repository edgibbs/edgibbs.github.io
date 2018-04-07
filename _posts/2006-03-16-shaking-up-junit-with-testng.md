---
id: 297
title: Shaking Up JUnit with TestNG
date: 2006-03-16T19:10:15+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=297
permalink: /2006/03/16/shaking-up-junit-with-testng/
categories:
  - conferences
  - software development
  - test driven development
---
At SD West 2006 today I attended a talk by Cedric Beust on TestNG entitled:

**Beyond JUnit: Introducing TestNG, Testing the Next Generation**

In 90 minutes he made a compelling argument for TestNG. It obviously has more features than JUnit and you can use the annotation features even if you&#8217;re stuck on Java 1.4 since they implemented it with Javadoc comments. I was able to install the IntelliJ IDEA plugin and get it up and running in about 10 minutes so I could play around with it. Some of the features you can do with the annotations include:

  * No need to extend any class.
  * Don&#8217;t have to start methods with <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              test
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    .</li> 
    
      * You can group tests using annotations like &#8220;functional&#8221;, or &#8220;integration&#8221; or &#8220;broken&#8221;.
      * You can allow parameters to be passed into tests.
      * You can stop running tests without commenting them out, say stick them in a broken group.
      * You can test threads.
      * You can set a <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
          <table cellspacing="0" cellpadding="0">
            <tr>
              <td class="line-numbers">
                <div>
                  1<br />
                </div>
              </td>
              
              <td>
                <div class="text codecolorer">
                  successPercentage
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        so that a test that might be dependent on a flaky resource won&#8217;t just fail.</li> 
        
          * You can specify the order tests execute in.
          * You can specify to use a skip option so dependent tests won&#8217;t be run if an earlier test fails.
          * A distributed option for running on multiple machines has been developed and should be added soon.</ul> 
        
        It all sounds great. Why wouldn&#8217;t you switch?
        
        Well Cedric talked about the primary reason I don&#8217;t find it compelling to switch or at least not right now. Someone asked him why he hadn&#8217;t just asked Beck and Gamma about enhancing JUnit. They said fine until he told them he wanted to add an option to specify the order of the tests. At that point they said on philosophical grounds that they weren&#8217;t going to do that, non-negotiable.
        
        The point is JUnit is a unit testing framework that focuses on true unit tests. The idea that tests can be run in any order is a powerful supporting feature that helps force developers to write tests that test only individual small units of code. Many people still write unit tests that are more functional tests and cross multiple layers of an application or require a lot of setup merely to run. I have to agree that I fall in with Beck and Gamma here.
        
        My approach for now is to rely on JUnit for all developer unit testing, and do the integration/functional/acceptence tests in Fitnesse. One of my biggest worries is that developers start taking advantage of say labeling a few tests as &#8220;broken&#8221; in annotations and then not running those unit tests. The point is when a test gets broken it needs to be high priority to fix it or delete it if it&#8217;s no longer relevant. Labeling tests broken and just moving on supports negative practices. If we were further down the TDD path, I might be less worried about missteps, but that&#8217;s the future.
        
        Still, TestNG has a compelling set of features and especially nice use of annotations. If one of my developers wants to try it out for a future project, I&#8217;ll be completely supportive. It&#8217;s always a lot easier to evaluate the difference when you actually use the tool on real world code.