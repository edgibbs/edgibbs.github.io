---
id: 478
title: Testing Private Methods
date: 2006-11-15T22:26:10+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=478
permalink: /2006/11/15/testing-private-methods/
categories:
  - software development
  - test driven development
---
Recently I got asked by two of my developers about what to do with testing private methods. They explained they wanted to test some of their private methods that contain logic. The options they were considering included:

  * Making the private methods public.
  * Extracting out the methods into new classes.

As a pragmatic approach, both seemed reasonable, but I remembered reading multiple bits of advice on only testing the public interface of a class. Testing private methods is wrong and dangerous.

[Simon Harris](http://www.redhillconsulting.com.au/blogs/simon/archives/000119.html) makes the common argument that you shouldn&#8217;t test private methods:

> Now, I almost never test private methods. I say almost, just in case i&#8217;ve either done it once before and forgotten or I need to change my mind at some point in the future. But as far as I&#8217;m aware, I never test private methods.

I know I&#8217;ve wanted to test private methods before. I like to keep most of my public java methods around 10 lines or so if possible, so I&#8217;m constantly extracting out well defined private methods. Some of these contain conditional logic I&#8217;d like to test as a single unit, but I have to suffice testing the conditionals through the public method that calls them. 

Hunting around for about 30 minutes turned up some insights on this issue.

Bill Venners defines [four possible approaches](http://www.artima.com/suiterunner/private.html) to unit testing private methods:

  * Don&#8217;t test private methods.
  * Give the methods package access.
  * Use a nested test class.
  * Use reflection.

He does a good job of exploring each one, but his ultimate conclusion is that usually you shouldn&#8217;t test private methods, but if you need to any of the last three approaches will work.

Cedric Beust of TestNG fame has a [stronger opinion](http://beust.com/weblog/archives/000303.html):

> My answer to the question &#8220;Should you test private methods&#8221; is a resounding YES!
  
> When it comes down to testing, I follow a very simple rule: &#8220;if it can break, test it&#8221;.

[Bruce Eckel](http://onthethought.blogspot.com/2004/11/testing-private-methods.html) agrees with Bill Venners that you should probably go ahead and test private methods if it makes sense:

> I&#8217;m with Bill on private method testing. Unit testing allows you to test at the granularity of the method, and the reason you break code up into private methods is to manage complexity. But if you can&#8217;t test at that level, it&#8217;s defeating.

[JB Rainsberger](http://jbrains.info) even has a recipe for testing private methods:

> **Recipe 17.6 Test a private method if you must**
> 
> &ldquo;You have a private method that is complex enough to warrant its own tests, but nevertheless is not important enough to promote to the public interface or refactor to a collaborating class. You could test the method indirectly through the public methods that invoke it, but you would rather test it in isolation, which is a laudable goal.
> 
> What&rsquo;s so bad about testing private methods, anyway? Perhaps the greatest problem is that private methods are private for a reason: the author intended for nothing but this one class to have any knowledge of the particulars of its implementation. &#8230; In that sense private methods support refactoring very well by providing the design with a degree of freedom of change.
> 
> &#8212;[Junit Recipes](http://www.diasparsoftware.com/template.php?content=publications#junit-recipes) 

The Pragmatics also lean towards testing private methods if you have to:

> If there is significant functionality that is hidden behind private or protected access, that might be a warning sign that there&rsquo;s another class in there struggling to get out. When push comes to shove, however, it&rsquo;s probably better to break encapsulation with working tested code that it is to have a good encapsulation of untested, non-working code.
> 
> &#8212; [Pragmatic Unit Testing](http://www.pragmaticprogrammer.com/starter_kit/utj/index.html)

[Bob Lee](http://weblogs.java.net/blog/crazybob/archive/2005/07/package_scoping.html) argues that package level scope should be used for testing:

> Package scoping particularly shines during unit testing. Some programmers argue that you should only test through the public API. Don&#8217;t be silly. Limiting your tests to the public API contradicts the spirit of unit testing and subjects you to unnecessary dependency pain. I prefer to isolate and limit the amount of code I test at one time, and test as close to the code as possible.

### Conclusion

So lots of thoughts, lots of options, but what to do? My conclusions are:

  * Try to avoid testing <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              private
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    methods.</li> 
    
      * When you do need to test a <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
          <table cellspacing="0" cellpadding="0">
            <tr>
              <td class="line-numbers">
                <div>
                  1<br />
                </div>
              </td>
              
              <td>
                <div class="text codecolorer">
                  private
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        method because it has enough logic to warrant unit testing just switch it to package scoping from
        
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
                  private
                </div>
              </td>
            </tr>
          </table>
        </div>
        
        .</li> </ul>