---
id: 490
title: JSF Backing Beans are Just Controllers
date: 2006-12-12T23:00:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=490
permalink: /2006/12/12/jsf-backing-beans-are-just-controllers/
categories:
  - jsf
  - software development
  - test driven development
---
Writing some initial code for a JSF TDD seminar I&#8217;m putting together for our developers I had an early test method:

<pre>public void testUserCanLogin() throws Exception {
  User fred = new User();
  fred.setName("fred");
  fred.setPassword("password");<br />
  UserBean userBean = new UserBean();
  userBean.setUser(fred);<br />
  assertTrue(userBean.login());
}
</pre>

After realizing the JSF backing bean, UserBean, is actually just a page controller and all I want it to do at this point is allow a user to login I refactored the name:

<pre>public void testUserCanLogin() throws Exception {
  User fred = new User();
  fred.setName("fred");
  fred.setPassword("password");<br />
  <b>LoginController</b> controller = new <b>LoginController</b>();
  <b>controller</b>.setUser(fred);<br />
  assertTrue(<b>controller</b>.login());
}
</pre>

Part of this may be inspired by Ruby on Rails, but I get tired of using Bean in so many java classes, and really this bean was not just a traditional DTO style bean with no behavior. So Controller just feels a lot more explanatory. As an extra bit of semantic cleanup I renamed the default package for the backing bean. By default when you use RAD 6.0 to setup a new JSF page it dumps your backing beans into a

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
          pagecode.pages
        </div>
      </td>
    </tr>
  </table>
</div>

package which bugs the crap out of me. So since I&#8217;m starting from scratch and working in IDEA I just put it in a

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
          controller
        </div>
      </td>
    </tr>
  </table>
</div>

package which describes its function better.