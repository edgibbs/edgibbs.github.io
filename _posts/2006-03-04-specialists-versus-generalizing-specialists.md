---
id: 286
title: Specialists Versus Generalizing Specialists
date: 2006-03-04T23:32:40+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=286
permalink: /2006/03/04/specialists-versus-generalizing-specialists/
categories:
  - software development
  - websphere
---
It&#8217;s a classic binary argument in the software development arena. Do you want developers to be specialists or do you want developers to be capable at almost any development task and specialized on a few. I&#8217;m borrowing the [term generalizing specialist](http://www.agilemodeling.com/essays/generalizingSpecialists.htm) from [Scott Ambler](http://www.ambysoft.com/scottAmbler.html).

I completely buy the generalizing specialist argument. Agile methodologies assume anyone on the team can step in and help out say writing/reviewing a use case or troubleshooting the ant deployment task. On Agile projects a whole team of specialists makes little sense and sends you straight back to serial development. Instead of the team being able to self-organize, many of them end up waiting on [dependencies from others](http://weblogs.asp.net/wallen/archive/2005/09/30/426299.aspx). And because the specialists are the only experts in an area, they are unlikely to welcome much of a review process of their work since it&#8217;s hard for novices to review the work of an expert.

A classic example here would be breaking up a team into specialists on front end and back end development. Say the front end developers pretty much get there code in place with the proper validations and AJAX type features. Then they&#8217;re stuck waiting on the back end developers who are familiar with object relational mappers and other technologies. Then of course maybe you have specialist DBAs who are the only ones allowed to do database design so the picture gets even worse.

A conversation with our company&#8217;s architect brought this up. He explained to me that the thinking is that we&#8217;ll have a few specialists who can do business process modeling (BPEL) with WID (Websphere Integration Developer). After I pointed out that my thinking was a little different. He countered with the idea that as a developer he isn&#8217;t very good at GUIs, so he&#8217;d rather leave that to a specialist. He&#8217;s good at BPEL (true) so he should specialize on that. 

The arguments pretty much come down to:

  * Specialists have really deep knowledge that can be powerful.
  * Vendors like IBM often sell the idea of having very specialized roles. (I&#8217;m sure this isn&#8217;t to reinforce having to buy lots of specialized tools. And it can&#8217;t be that providing specialized roles allows IBM professional services to charge a lot of layered rates for different consultant titles.)
  * Waterfall methodologies or classic RUP assume teams of specialists. Requirements Experts to gather requirements. Architects to do a big UML design up front. Developers to just follow all the UML and pound out the code. (Oh, does IBM own Rational now?)

I buy the following arguments as being more likely to succeed in practice:

  * Generalizing specialists don&#8217;t let the project sit there, they just pick up the ball and run with it. If the database schema needs to change they just change it, no waiting around for the DBA. Even though they may not be the perfect specialist to perform a task, by pitching in to do what needs to get done they keep the project on track.
  * Generalizing specialists on a project guarantees at the end of a project multiple people know how the system works and can be called upon for maintenance or later enhancements. It avoids silos that kill many organizations.
  * Generalizing specialists are constantly learning new things by virtue of not resting on a narrow specialty.
  * Generalizing specialists are often good at mentoring or teaching others what they know.
  * Generalizing specialists can often converse better with clients and customers because they do things like requirements gathering, testing, or project management even if it isn&#8217;t one of their few specialties.
  * You can often run a IT project with as few as two generalizing specialist developers. Specialists teams often need a large amount of staff who can&#8217;t be dedicated to the one project.
  * Agile really doesn&#8217;t work without generalizing specialists.

I still require on projects my developers work on that everyone is able to build an entire slice of the system from database to javascript effects on the front-end JSP. Most of them are better in one area or another, but they can all do any of them. I&#8217;m really not planning on changing this requirement even if a project involves doing some BPEL.