---
id: 18
title: Nice Error Messages in Spring
date: 2005-06-21T22:30:14+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=18
permalink: /2005/06/21/nice-error-messages-in-spring/
categories:
  - software development
---
Working through Chapter 2 of Spring: A Developer&#8217;s Notebook tonight, and I&#8217;m pleasantly surprised by Spring&#8217;s error messages. This is the first one I got after deploying one of the examples:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          org.springframework.beans<br /> .factory.BeanDefinitionStoreException: <br /> Error registering bean with name 'viewResolver' defined in ServletContext resource <br /> [/WEB-INF/rentABikeApp-servlet.xml]: Bean class [org.springframework.web.servlet<br /> .view.InternalResourceViewResolvers] not found; <br /> nested exception is java.lang.ClassNotFoundException: org.springframework.web<br /> .servlet.view.InternalResourceViewResolvers
        </div>
      </td>
    </tr>
  </table>
</div>

This points me to the file and the exact reference that is causing the problem just by reading the error message. I suppose a line number would be the only thing missing. Turns out I had an extra &#8216;s&#8217; at the end of InternalResourceViewResolver. A quick fix and the next error message:

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />6<br />7<br />8<br />9<br />10<br />11<br />12<br />13<br />14<br />15<br />16<br />17<br />18<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          org.springframework.beans.<br /> factory.BeanCreationException: <br /> Error creating bean with name <br /> 'editBikeForm' defined in ServletContext resource <br /> [/WEB-INF/rentABikeApp-servlet.xml]: <br /> Error setting property values; <br /> nested exception is org.springframework.beans<br /> .PropertyAccessExceptionsException: <br /> PropertyAccessExceptionsException (1 errors);<br /> &nbsp;nested propertyAccessExceptions are: [org.springframework.beans<br /> .TypeMismatchException: <br /> Failed to convert property value<br /> &nbsp;of type [java.lang.String] to <br /> required type [java.lang.Class] for property<br /> &nbsp;'commandClass'; <br /> nested exception is <br /> java.lang.IllegalArgumentException: <br /> Invalid class name: com.springBook.Bike]
        </div>
      </td>
    </tr>
  </table>
</div>

This one is pretty obvious as well, whoops com.springbook not com.springBook. It&#8217;s nice that it points you to the errors right away. I&#8217;ve seen so many java open source packages that don&#8217;t point you at the real error relying too often on a simple stack trace.