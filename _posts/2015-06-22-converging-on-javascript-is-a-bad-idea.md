---
id: 1025
title: Converging on Javascript is a Bad Idea
date: 2015-06-22T19:17:19+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=1025
permalink: /2015/06/22/converging-on-javascript-is-a-bad-idea/
categories:
  - javascript
  - software development
---
For many developers despite some of the node.js hype, Javascript is a language we&#8217;ve been stuck with by an unfortunate decision by Netscape to bundle a language tossed together in 10 days. It wasn&#8217;t even called Javascript at the time, it emerged originally as LiveScript. They even tried to market a server side version bundled with Netscape Enterprise Server in the days when you could sell web servers for real money.

Dave Winer&#8217;s recent blog post on [Why aren&#8217;t the BigCo&#8217;s Converging on Javascript?](http://scripting.com/2015/06/18/whyArentTheBigcosConvergingOnJs.html) argues that Javascript has arrived and is dominating even while the big Companies like Apple and Google try to push newer languages. I agree that these companies have some of their own agendas in building out new languages, but if Javascript were truly so great and dominant why does everyone build a transpiler from ClojureScript to Opal to avoid having to write in plain old Javascript. My answer is because Javascript is a terrible language if you have a choice.

Look at any newer modern language and you&#8217;re going to find a nicer language with many fewer warts than Javascript take your pick of many:

  * Ruby
  * Scala
  * Clojure
  * C#
  * Go
  * Rust
  * Elixir
  * Python
  * Swift
  * &#8230;

Javascript would have died off very quickly without its&#8217; continued support as the only way to script browser clients. Even now many are turning to transpiling to take the pain out of supporting large javascript code bases. It may eventually turn out that Javascript becomes just a readable intermediate language that your favorite language compiles down to much like byte code on the JVM. Or maybe the browser vendors start supporting a new VM on the browser and languages can target that.