---
id: 592
title: Fixing Issue with JRuby 1.0 and Rails
date: 2007-07-13T22:45:04+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/2007/07/13/fixing-issue-with-jruby-10-and-rails/
permalink: /2007/07/13/fixing-issue-with-jruby-10-and-rails/
categories:
  - ruby
  - software development
---
In seeing if my post on installing [Deploying Rails to Tomcat as a WAR](http://edgibbs.com/2007/05/25/deploying-rails-to-tomcat-as-a-war-with-jruby/#comment-94935) I came across an issue with running rails under JRuby 1.0 and ActiveRecord-JDBC 0.4.

First off you still have to run the following command because the rails script file is still not set to be executable:

{% highlight bash %}
chmod 775 $JRUBY_HOME/bin/rails
{% endhighlight %}

In addition I had to change the top shebang line of the script after I got this error:

{% highlight bash %}
rails --version
/Applications/jruby-1.0/bin/rails: line 9: require: command not found
/Applications/jruby-1.0/bin/rails: line 10: version: command not found
/Applications/jruby-1.0/bin/rails: line 11: syntax error near unexpected token `('
/Applications/jruby-1.0/bin/rails: line 11: `if ARGV.first =~ /^_(.*)_$/ and Gem::Version.correct?
{% endhighlight %}



<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />2<br />3<br />4<br />5<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          $ rails --version<br /> /Applications/jruby-1.0/bin/rails: line 9: require: command not found<br /> /Applications/jruby-1.0/bin/rails: line 10: version: command not found<br /> /Applications/jruby-1.0/bin/rails: line 11: syntax error near unexpected token `('<br /> /Applications/jruby-1.0/bin/rails: line 11: `if ARGV.first =~ /^_(.*)_$/ and Gem::Version.correct? $1 then'
        </div>
      </td>
    </tr>
  </table>
</div>

I found [the fix](http://ashishwave.wordpress.com/2007/06/29/installing-jruby-on-rails-jror/) here, but you just change the top shebang line from:

{% highlight bash %}
#!/Applications/jruby-1.0/bin/jruby
{% endhighlight %}

To:

{% highlight bash %}
#!/usr/bin/env jruby
{% endhighlight %}
