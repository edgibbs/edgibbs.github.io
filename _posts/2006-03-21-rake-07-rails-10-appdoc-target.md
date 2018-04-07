---
id: 302
title: Rake 0.7, Rails 1.0, appdoc target
date: 2006-03-21T21:43:05+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=302
permalink: /2006/03/21/rake-07-rails-10-appdoc-target/
categories:
  - ruby
  - software development
---
Ran into a minor inconvenience going through [Agile Web Development with Rails](http://www.pragmaticprogrammer.com/title/rails/). Running the command:

<pre>rake appdoc</pre>

Results in the following error:

<pre>rm -r doc/app
unrecognized option `--line numbers -- inline-source'
For help on options, try 'rdoc --help'
rake aborted!
exit
</pre>

Didn&#8217;t take to long to find the source of the [bug](http://dev.rubyonrails.org/attachment/ticket/3757/correcly_set_rdoc_options_in_appdoc_task.diff). Just change one line in

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
          /usr/lib/ruby/gems/1.8/rails-1.0.0/lib/tasks/documentation.rake
        </div>
      </td>
    </tr>
  </table>
</div>

. So:

<pre>rdoc.options &lt; &lt; '--line-numbers --inline-source'</pre>

Becomes:

<pre>rdoc.options &lt; &lt; '--line-numbers' &lt;&lt; 'inline-source'</pre>