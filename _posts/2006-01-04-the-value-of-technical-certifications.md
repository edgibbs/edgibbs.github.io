---
id: 231
title: The Value of Technical Certifications
date: 2006-01-04T19:29:02+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=231
permalink: /2006/01/04/the-value-of-technical-certifications/
categories:
  - management
  - software development
---
One of my developer&#8217;s today passed his Sun Certified Business Component Developer exam successfully. As with most certification tests it makes a lot of assumptions about the world that are a bit odd. For one it assumes that there would be a component market in EJBs and that you might buy such a component. Then you would have someone setup the security roles and define the users of said application. Later a deployer would wrap it up into a good old EAR file and do the deployment. As the developer pointed out, 

&#8220;Gheesh, I don&#8217;t care about the roles, all of them just equal me at the end of the day.&#8221;

Another small point was that while he studied up on Entity beans and the joys of CMP versus BMP he&#8217;s never actually used one in a real application. Turns out he&#8217;s only built a few stateless session beans for any real application.

My mileage on this has run about the same. I got the whole Sun stable of certs about 3 years ago. Everything from Sun Certified Java Programmer to Sun Certified Enterprise Architect. The **Enterprise** Architect always made me feel _special_. In practice on actual applications I&#8217;ve dealt with a handful of stateless session beans. Not even a simple message driven bean yet, though I expect I&#8217;ll build one of those in a real application someday since JMS is a pretty nice way of handling asynchronous requests.

For all practical purposes a good bit of the material I picked up has never been terribly relevant. Spring and Hibernate have been a lot more useful on real world applications. Still I don&#8217;t really regret taking the time to study and pass the certs.

For one, all the certs I acquired made me a lot more valuable as a consultant at least on paper. Clients often latch on to certs as a way of evaluating a consulting organization and I&#8217;m sure it helped us land a few jobs. I&#8217;m sure it also helped land my current management position as my new employers recognized they hardly ever saw certs like SCEA from candidates, so it may have gotten me over the resume hurdle into an interview. 

Second, even though the material for some of the certs wasn&#8217;t directly applicable to anything I&#8217;ve worked on it did force me to know the entire area better. Some of the things were trivial. Why in the world the Sun Certified Web Component Developer focused so much on writing custom JSP tags I&#8217;ll never know since I&#8217;ve always found JSTL good enough. The SCEA design problem forced me to nail down my UML a lot better as well.

Third, the consulting companies I&#8217;ve worked at considered it a rite of passage to pick up a few certs to prove oneself. Some of them explained that they averaged 3.2 certs per developer and similar stats to include on marketing pieces. And they could use it as a concrete item that showed you were dedicated to improving your skills at annual review time.

When my developers come to me to ask about picking up some cert I usually pass along some advice. I almost always offer to pay for it and the associated training materials. It shows some real motivation on their part. I point out that merely getting a cert won&#8217;t make them an expert, but it will help them by setting a concrete goal in improving on a given technology. I&#8217;ve often counseled my developers who were new to Java that the Sun Certified Java Programmer Certification was a good way to get up to speed on the language including some of its dustier corners like inner classes. For more advanced developers certs like [IEEE&#8217;s Software Developer](http://www.computer.org/portal/site/ieeecs/menuitem.c5efb9b8ade9096b8a9ca0108bcd45f3/index.jsp?&pName=ieeecs_level1&path=ieeecs/education/certification&file=index.xml&xsl=generic.xsl&) cert or the Sun Certified Enterprise Architect might be more their speed. Finally, for those looking at more PM skills I point out that the PMP is pretty much a requirement in that world. That one I give a big grain of salt though since I find the PMP to focus far too much on waterfall style project management techniques over Agile approaches like Scrum.

I may go ahead and go through the rigor of studying for Sun&#8217;s Certified Developer for Java Web Services cert soon and see if I can challenge any of my developers to take it with me. I find the WS-* specs to be really convoluted, but we&#8217;re finally getting to the point where we&#8217;re ready as an organization to start putting up quite a few web services in front of our legacy mainframe system.