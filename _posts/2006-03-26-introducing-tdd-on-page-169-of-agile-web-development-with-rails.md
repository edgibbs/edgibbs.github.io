---
id: 307
title: Introducing TDD on Page 169 of Agile Web Development with Rails
date: 2006-03-26T22:29:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=307
permalink: /2006/03/26/introducing-tdd-on-page-169-of-agile-web-development-with-rails/
categories:
  - ruby
  - software development
  - test driven development
---
Walk before you run. So even in a TDD framework approach like Rails the concept of TDD is only approached and explained on page 169 of [Agile Web Development with Rails](http://pragmaticprogrammer.com/titles/rails/index.html). And even in a chapter on testing we begin with writing functional database style unit tests, and then functional style tests against the controllers. Finally, on page 169, we&#8217;re introduced to test driven development.

I don&#8217;t fault the writers of Agile Web Development with Rails for the approach and certainly not [Mike Clark](http://clarkware.com/cgi/blosxom) who has made important contributions to TDD and is extremely lucid technical writer. I fault the current level of adoption of TDD. 

I think the authors made a reasonable assumption that many of their reader base wouldn&#8217;t be familiar with TDD. Thus you get through building the example application before you bring up the subject of testing. Since many readers come from backgrounds like PHP it is unlikely they&#8217;ve ever touched a unit test framework or tool before.

I still would have enjoyed if they blazed a trail and started out doing TDD. Just gone ahead and explained the approach in chapter one and then used it to build the example application. This would have forced a title change like <u>Test Driven Development with Rails</u> since the only books that cover the TDD approach up front have TDD somewhere in the title like [Test Driven Development: A Practical Guide](http://www.amazon.com/gp/product/0131016490/104-8024001-4248755?n=283155).

Maybe in the next few years we&#8217;ll see technical books that aren&#8217;t on TDD, that just use TDD in the examples by default.