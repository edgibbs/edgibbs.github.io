---
id: 362
title: 'Configuration problems with Ruby&#8217;s XmlSimple'
date: 2006-05-28T20:09:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=362
permalink: /2006/05/28/configuration-problems-with-rubys-xmlsimple/
categories:
  - ruby
  - software development
---
I like Ruby gems, I can see the resemblance to Perl&#8217;s old CPAN idea. CPAN always drove me crazy since everything you pulled down then had say 8-10 more libraries that it required. Till this day I still avoid often avoid perl just because of the pain of constantly installing libraries to get simple things to work.

I ran into one of those too easy to go wrong type problems. Just two easy steps to use [XmlSimple](http://xml-simple.rubyforge.org/):

  1. <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              sudo gem install xml-simple
            </div>
          </td>
        </tr>
      </table>
    </div>

  2. Run a ruby script with <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              require 'xmlsimple'
            </div>
          </td>
        </tr>
      </table>
    </div>

Two hours later I still get the same useless error that doesn&#8217;t really have any google hits:

<pre>`require': no such file to load -- xmlsimple</pre>