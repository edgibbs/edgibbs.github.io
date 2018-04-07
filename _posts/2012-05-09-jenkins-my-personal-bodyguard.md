---
id: 934
title: 'Jenkins: My Personal Bodyguard'
date: 2012-05-09T05:29:45+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=934
permalink: /2012/05/09/jenkins-my-personal-bodyguard/
categories:
  - automated builds
  - ruby
  - software development
  - test driven development
---
I&#8217;ve been running Jenkins as my CI solution for years now, but for the first 6 months at my new job I used it in an entirely new way. The typical CI pattern is you setup to run against checkins to your master branch run all the unit tests, and depending on how sophisticated you are integration tests, static analysis, or even performance tests. 

In my current shop we had a standard CI build using CC.rb against checkins to our master branch. It ran about 5000+ specs sequentially and if everything&#8217;s green master is available for production pushes. That fulfills the standard case for CI just fine, but I quickly found that it a little light for my needs. The issue is we relied on feature branches for rolling out all of our stories and while those stories are being worked there&#8217;s no CI job at all. Another pain point is even with parallel specs and a nice 4-8 core processor the full test run takes 5-10 minutes so it doesn&#8217;t get run nearly as often as one might like.

I&#8217;d let Jenkins be my default choice for CI in Javaland, but I was really open to switching it out for a more Ruby style CI server. I figured the first place to look was our already running CC.rb implementation. I tried out CC.rb long ago and remembered liking it a lot better than the original cruise control, but with years of development on it I figured it had evolved. Turns out CC.rb is a pretty basic solution for CI and it hasn&#8217;t had much love over the years. It runs a build showing the console output and a very basic web console. Coming from Jenkins the lack of features and plugins was pretty shocking.

Given the Ruby community&#8217;s love for XP practices there must be a better option available. I looked at numerous CI servers for Ruby including CI Joe, Integrity, and Travis. All of them followed the lines of providing a very simple CI server much like CC.rb. Travis CI appeared to be a bit more with its use of a hosted open source solution, but it is completely tied to hosting your project on Github. None of these projects showed the depth of a solution like Jenkins.

So the solution was to run Jenkins as my own personal bodyguard. We were looking at swapping out the CC.rb implementation, but it wasn&#8217;t a priority right away. So I dived in and setup Jenkins to run a build on my laptop. Instead of just building master I added whatever git feature branch I was working on and hooked up an audible trigger to play James Brown &#8220;I feel good!&#8221; for successes and &#8220;Houston I think we have a problem&#8221; for failures. I expected to use the rake plugin to launch the build, but it turned out it was much easier with using things like rvm and bundler to simply execute a script. My final scripts for the build looked something like the following:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          bash -l -c "rvm use 1.8.7-p330@acme"<br /> bash -l -c "bundle install"<br /> bash -l -c "rake db:migrate"<br /> bash -l -c "rake parallel: prepare"<br /> bash -l -c "rake parallel: spec"
        </div>
      </td>
    </tr>
  </table>
</div>

So finishing up a bit of functionality, I&#8217;d commit and about 10 minutes later my laptop would exclaim &#8220;I feel good&#8221;, or occasionally &#8220;Houston I think we have a problem&#8221; to let me know I missed something. So I had my own personal bodyguard build and I could happily let it run in the background. 

This year we replaced CC.rb with Jenkins and dropped feature branches so I&#8217;ve retired my laptop Jenkins, but I recommend the practice if you find yourself in a similar spot.