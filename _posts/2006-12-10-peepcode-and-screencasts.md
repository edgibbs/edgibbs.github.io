---
id: 489
title: PeepCode and Screencasts
date: 2006-12-10T22:01:09+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=489
permalink: /2006/12/10/peepcode-and-screencasts/
categories:
  - ruby
  - software development
  - test driven development
---
Last week, I finally got around to checking out [Geoffrey Grosenbach&#8217;s](http://geoffreygrosenbach.com/) [PeepCode](http://peepcode.com/) screencasts. Not much risk at nine bucks, I went ahead and sampled the Test First Development episode, because I&#8217;m a test first convert. 

I learned a lot of small points:

  * How to easily run Rails edge for a single Rails project.
  * Other people, or at least Geoffery Grosenbach deal with BDD utilizing well named test methods including things like <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              test_should_guess_date
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    , so I&#8217;m not alone.</li> 
    
      * Learned about the nice natural language date/time parser, [chronic](http://chronic.rubyforge.org/).
      * Move to <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
          <table cellspacing="0" cellpadding="0">
            <tr>
              <td class="line-numbers">
                <div>
                  1<br />
                </div>
              </td>
              
              <td>
                <div class="text codecolorer">
                  assert_select
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        replacing the
        
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
                  assert_tag
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        in Rails 1.2.</li> </ul> 
        
        The format works really well for tutorials as you can follow along by simple pausing every 30 seconds or so and typing in the examples as you can go. Many technical trainers will tell you group demos are really great, but difficult to pull off. The problem is people don&#8217;t keep up at the same pace or they miss something typed in and start seeing exceptions instead of moving forward with the rest of the class. This really lets you follow along at your own pace. The other nice thing was that all of the code typed in actually worked.
        
        I&#8217;ll probably try out the TextMate screencast next since I don&#8217;t feel like I&#8217;ve yet scratched the full power of the editor.