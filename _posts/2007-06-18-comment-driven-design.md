---
id: 574
title: Comment Driven Design
date: 2007-06-18T22:26:15+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/06/18/comment-driven-design/
permalink: /2007/06/18/comment-driven-design/
categories:
  - software development
  - test driven development
---
Jef Raskin suggests [comments are more important that code](http://www.acmqueue.org/modules.php?name=Content&pa=showpage&pid=290) (via a link from [Raganwald](http://weblog.raganwald.com/)). Like test first design, you should try out comment first design:

> A competent programmer who has learned the documentation-first style will sometimes think of a solution in terms of code, write that first, and then document, or will apply a mixed strategy&mdash;especially when no convoluted algorithm design is involved. This should not be discouraged so long as the programmer generally adheres to (and sincerely supports) the documentation-first approach.
  
> 
  
> &#8212; Jef Raskin

I actually remember working this way long ago in my perl days and finding it a reasonable way to get started. It&#8217;s perl so generally you&#8217;re not writing a large application all at once so outlining some of the design with comments and then beginning to build functions worked for me as an approach and as a bonus I got a decent level of documentation for my perl scripts.

Javadoc was also a great find as I migrated into Java. Here you could have generated HTML comments all inline with the code. This used to be pitched as a major advantage over Java other older languages. It&#8217;s been a long time since I saw Javadoc talked about as a major feature of the language anymore. 

Gradually I left comments behind except when documenting a tricky design decision or a hack that was left in the code for now. I use it still fairly extensively when attempting to add a bug fix or enhancement to some legacy code base so at least future maintenance programmers can have an idea of what I was fixing.

With TDD driving my designs I found more readable code more compelling than any sort comments. I like Ken Pugh&#8217;s concept of &#8216;extreme readability&#8217; from [Prefactoring](http://www.oreilly.com/catalog/prefactoring/). The idea is the code is so much like the business user&#8217;s language that they could review the code and pick up the meaning. At least that&#8217;s the goal. Jef Raskin argues that while this idea from XP is a step in the right direction:

> When programmers speak of &ldquo;self-documenting code,&rdquo; they mean that you should use techniques such as clear and understandable variable names. Instead of n or count, it is better to use a readable, self-explanatory name such as numberOfApricotsPickedToDate. This is a minimalist&rsquo;s documentation. Nonetheless, it helps&mdash;the use of explanatory names, whether of variables, modules, objects, or programs, should be encouraged.

Comments still need to come first because they can&#8217;t explain the why of a design decision. His example here is a comment about why an algorithm was chosen:

> :Comment: A binary search turned out to be slower than the Boyer-Moore algorithm for the data sets of interest, thus we have used the more complex, but faster method even though this problem does not at first seem amenable to a string search technique. :End Comment

I wonder if this isn&#8217;t a straw man type argument. Obviously comments on why a certain algorithm was chosen would be helpful and a good idea for any developer to include. Otherwise they either get lost or end up a design document people are unlikely to read.

It&#8217;s a very short article so he doesn&#8217;t spend much time with the issues around comments as documentation such as when they get out of sync with the code. There&#8217;s no talk of tests as executable documentation.

If one were actually to take a comment driven design approach I can&#8217;t see how you&#8217;d be able to write useful comments about design decisions. You have to actually write tests and code to make any reasonable comment about why a design was chosen. And then how are you doing document first? Does your comment look like:

<pre>// A binary search is used here for better performance.
public String findShortestNode() {
</pre>

Then doing a few cycles of writing tests and refactoring the code you update it to:

<pre>/**
 * A binary search turned out to be slower than
 * the Boyer-Moore algorithm for the data 
 * sets of interest, thus we have used the more
 * complex, but faster method even though 
 * this problem does not at first seem amenable
 * to a string search technique.
 */
public String findShortestNode() {
</pre>

I think I&#8217;ll just keep adding the rare comment to explain why when I need it rather than starting out comment first.