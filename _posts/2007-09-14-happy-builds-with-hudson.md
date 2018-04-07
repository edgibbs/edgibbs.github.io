---
id: 620
title: Happy Builds With Hudson
date: 2007-09-14T04:50:46+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/09/14/happy-builds-with-hudson/
permalink: /2007/09/14/happy-builds-with-hudson/
categories:
  - automated builds
  - software development
---
Glancing at a [Hudson](https://hudson.dev.java.net/) dashboard in the morning I crack a little smile. 9-10 project statuses are right there in front of me. 

<div align="center">
  <a href="http://www.cafepress.com/buy/build+cop/-/pv_design_details/pg_1/id_15744437/opt_/fpt_/c_666/"><img src="http://edgibbs.com/images/build_cop.jpg" border="0" /></a></p> 
  
  <p>
    <em>Great T-shirt on an audience member.</em> </div> 
    
    <p>
      I gave a two hour presentation on Hudson this week at our local <a href="http://www.sacjug.org/">Sacramento JUG</a> on &#8220;Happy Builds with Hudson&#8221;. About 20-25 people showed and I got plenty of good questions from the audience. I did ask one audience question. By a show of hands how many people already have a continuous build. About 50% of the room raised their hands. The adoption rate is pretty good, but continuous integration is probably the easiest XP/Agile practice to adopt and half the room still hasn&#8217;t tried it out yet.
    </p>
    
    <p>
      I covered Hudson fairly deeply including:
    </p>
    
    <ul>
      <li>
        Dashboard weather icons. Now you can see the recent status of your project at a glance, not just the last build.
      </li>
      <li>
        Static analysis plugins. They&#8217;ve added plugins to merge findbugs, checkstyle, PMD, and todo tasks into graphics with trend lines.
      </li>
      <li>
        Master-slave builds. Still haven&#8217;t tried this out or really needed to, but nice to know it&#8217;s there.
      </li>
      <li>
        Matrix builds. You can setup a single project, but define different JDKs, different OSes, etc and Hudson will automatically create builds for all of the possible options.
      </li>
    </ul>
    
    <p>
      If you haven&#8217;t taken a look at Hudson and you&#8217;re not 100% happy with your current build tool there are just three steps:
    </p>
    
    <ol>
      <li>
        Download hudson.war
      </li>
      <li>
        Run: <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
          <table cellspacing="0" cellpadding="0">
            <tr>
              <td class="line-numbers">
                <div>
                  1<br />
                </div>
              </td>
              
              <td>
                <div class="text codecolorer">
                  java -jar hudson.war
                </div>
              </td>
            </tr>
          </table>
        </div>
      </li>
      
      <li>
        Open a web browser to http://localhost:8080
      </li>
    </ol>