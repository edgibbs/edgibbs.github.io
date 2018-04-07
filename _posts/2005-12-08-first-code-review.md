---
id: 209
title: First Code Review
date: 2005-12-08T21:38:52+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=209
permalink: /2005/12/08/first-code-review/
categories:
  - code reviews
  - jsf
  - software development
---
We finally held our first code review today after having [planned](http://edgibbs.com/2005/10/13/code-reviews-by-management-fiat/) them more than a month ago. It was important enough to me to ignore my current stomach flu and attend the code review anyway.

The review involved myself, the tech lead on the project, and one senior developer. I&#8217;d reviewed the process with the tech lead, but as these things go some things fell through the cracks, like that there should be two days to review the code before holding the review. Anyway it was more important that we got started.

We met in the team room which was pretty much my office until about 2 weeks ago when I moved out to cubicle land. The tech lead had prepared printouts that he handed out the day before with 5 classes for the review. I setup a projector so we could jump through the code on the overhead as well and we recorded the mandatory and optional changes on the whiteboard.

I ended up leading the review process, probably because this is more of my initiative than anyone else&#8217;s. The senior developer admitted he had never gone through a code review before and was interested in seeing how they worked. Out of the five classes being reviewed most of the time was spent on a single JSF backing bean class.

To start out with I did a quick review of the process checklist (see [PDF version](/pdf/code_review_checklist.pdf)). It&#8217;s still in rough form and bound to get cleaned up, but it covers pretty much our initial process. I asked if either of them had run a static checker like Checkstyle, or the code analysis tools in RAD or IDEA. Neither of them had, so I mentioned I had at least looked at Checkstyle and showed them the output on the latest email from a cruisecontrol build. They seemed to think it would still be useful to run the check, they just didn&#8217;t get around to it this time.

After that I started going through the first large class where we ended up spending most of our time discussing. This was an interesting class to review since it contained a mix of RAD JSF generated code and the developer&#8217;s actual code. RAD&#8217;s JSF generator violates quite a few of our coding conventions including:

  * By default creates a <div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
      <table cellspacing="0" cellpadding="0">
        <tr>
          <td class="line-numbers">
            <div>
              1<br />
            </div>
          </td>
          
          <td>
            <div class="text codecolorer">
              pagecode.pages
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    package</li> 
    
      * Makes all the properties protected instead of private.
      * Puts underscores in a lots of variable names.
      * Doesn&#8217;t camel case things with multiple words.
      * Uses wonderfully descriptive defaults for variable names like text1.</ul> 
    
    We agreed to make the attempt to clean them up in RAD&#8217;s JSF tool, but if it causes problems with say reverse engineering, then we&#8217;ll just let it slide. (RAD continues to get my hackles up with its wonderful features.)
    
    I hammered home that the class we were reviewing badly needed tests since it had none. This really shouldn&#8217;t have happened, but so far we&#8217;re making slow progress on the test driven development front. We agreed the generated class doesn&#8217;t really tests for all of it&#8217;s generated methods, just the ones which the developers changed or added to.
    
    The style for making comments was fairly open. We all discussed our thoughts on the class and its methods as we scrolled through the code on the overhead. We didn&#8217;t use the more formal process of having one person go through all of their comments before moving on to the next person.
    
    The main class that was reviewed was another interesting animal because it had code from both the tech lead and the senior developer in it so it really was a review for both of them. Going through some conditional navigation logic the tech lead had written the comments was made that it needed to be refactored because it was bout 40 lines long anyway, but that much of the code could be moved to the faces-confix.xml file and navigation rules. The tech lead on this project has quite a bit of experience with Struts, but seeing how the senior developer had utilized more of a JSF style for the navigation he realized it was probably a better approach anyways.
    
    We also found some minor things like get methods that didn&#8217;t return anything and should probably be renamed:
    
    <pre>public void getIrsDeductions()</pre>
    
    The other four classes were much faster to review as they were fairly lightweight DAOs and Service classes that called the DAOs.
    
    At the end of the review I went through the comments from Checkstyle. The developers had recently fixed an issue with RAD where it automatically uses tabs for indenting instead of spaces, so the remaining Checkstyle comments were of some use. Despite getting these reports they hadn&#8217;t really spent any time looking at them. It turned out 90% of the comments were about problems in the generated code sections and some older code that had been borrowed from another project that used a Java RMI strategy to attach to a proprietary legacy system which again generated a lot of non-compliant code. Still I thing they got some understanding when I explained the [cyclomatic complexity](http://www.onjava.com/pub/a/onjava/2004/06/16/ccunittest.html) warnings and the method size limit which we set to 20 lines for now. 
    
    We wrapped up in about an hour with all of the mandatory changes written on the whiteboard and on the developer&#8217;s code printouts. We agreed that the fixes will be in within two days and then the tech lead and I will review that the changes were made. There won&#8217;t be a formal meeting, possibly just addressed at the daily Scrum in a few days.
    
    I think this first attempt if a little disorganized was generally a success. We managed to share knowledge and catch things a single developer wouldn&#8217;t have noticed, even little things like a misspelled variable name,
    
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
              lables
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    instead of
    
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
              labels
            </div>
          </td>
        </tr>
      </table>
    </div>
    
    . And I don&#8217;t think anyone came away feeling negative about criticism of their code. Both of the developer&#8217;s were pretty engaged the whole time, and they both asked a lot of questions and had comments to add. So there&#8217;s still the followup, and then next week we run another code review.