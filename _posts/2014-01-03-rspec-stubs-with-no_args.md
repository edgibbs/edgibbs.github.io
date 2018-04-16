---
id: 971
title: RSpec Stubs with no_args
date: 2014-01-03T23:35:03+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=971
permalink: /2014/01/03/rspec-stubs-with-no_args/
categories:
  - ruby
  - software development
  - test driven development
---
We&#8217;ve been getting pretty particular about our stub/mock expectations at work. A few months ago I would been perfectly happy with:

{% highlight ruby %}
TwitterGateway.stub(:new).and_return(double)
{% endhighlight %}

I didn&#8217;t worry about specifying that I didn&#8217;t pass any arguments to the constructor. After it was pointed out that the stub didn&#8217;t really fully specify its&#8217; expectations I changed to this style:

{% highlight ruby %}
TwitterGateway.stub(:new).with().and_return(double)
{% endhighlight %}

Then a colleague pointed out a nice bit of syntactic sugar. You can simply specify a no_args matcher if no arguments are passed in:

{% highlight ruby %}
TwitterGateway.stub(:new).with(no_args).and_return(double)
{% endhighlight %}

A more complete stub with better readability. Reminds me of how I fell in love with RSpec the first time I saw it back in [2006](http://edgibbs.com/2007/12/02/jbehave-and-rspec-history/).
