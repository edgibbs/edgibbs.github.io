---
id: 579
title: Amusing Code Comment
date: 2007-07-03T04:33:48+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/03/amusing-code-comment/
permalink: /2007/07/03/amusing-code-comment/
categories:
  - software development
---
<pre>try {
  AddressEntityBean addressEntityBean = addressHome.findByCityAndStreet(city, street);
  addressEntityBean.remove()
} 
catch (Exception e) {
  //this guy is already gone
}
</pre>