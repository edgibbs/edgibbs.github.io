---
title: RSpec Instance Double With Class Names
layout: post
permalink: /2020/07/11/rspec-instance-double-with-class-names/
categories:
  - software development
  - ruby
  - test driven development
---

After many years working with RSpec I discovered a nice little feature and a small gotcha with instance doubles.
I've used `instance_double` since before it was ported from [rspec-fire](https://github.com/xaviershay/rspec-fire).

My practice and all the current Relish RSpec examples of `instance_double` use the following format:

{% highlight ruby %}
let(:public_policy) { instance_double('Users::PublicPolicy') }
{% endhighlight %}

It turns out the actual `instance_double()` method takes a string representing the class or just the class constant:

{% highlight ruby %}
instance_double(doubled_class)
{% endhighlight %}

And the important part here is the parameter:

 `doubled_class(String, Class)`

No String is required here and class constants are auto-verifying. According to a long discussion
on [rspec-mocks](https://github.com/rspec/rspec-mocks/issues/842) this behavior exists to avoid some
auto-loading of classes that aren't needed so that tests can be a bit faster in some cases. For me this breaks
the expectation that I the mock is actually verifying that the class and methods actually exist. If I
wanted just a pure mock I could just use `double`.  And for Rails projects that make up a lot of the day to day
paid developer work everything auto-loads anyway. Using class constants is just simpler. If you're on a legacy
project you can probably just add the config to verify the strings ahead of time anyway with the following:


{% highlight ruby %}
config.mock_with :rspec do |mocks|
  mocks.verify_doubled_constant_names = true
end
{% endhighlight %}

This example code shows what happens when you make a typo in the string constant name and you don't have the config to verify set:

{% highlight ruby linenos %}
require 'spec_helper'
require_relative '../../lib/users/policy_enforcer'
require_relative '../../lib/users/public_policy'

RSpec.describe Users::PolicyEnforcer do
  describe '#allowed?' do
    let(:policy_enforcer) { Users::PolicyEnforcer.new(public_policy) }

    context 'with correct string instance_double class constant' do
      let(:public_policy) { instance_double('Users::PublicPolicy') }

      before do
        allow(public_policy).to receive(:allowed?)
      end

      it 'returns true' do
        policy_enforcer.allowed?
        expect(public_policy).to have_received(:allowed?)
      end
    end

    context 'with typo string instance_double class constant' do
      let(:public_policy) { instance_double('Use::PublicPolicy') }

      before do
        allow(public_policy).to receive(:allowed?)
      end

      it 'lies and returns true' do
        policy_enforcer.allowed?
        expect(public_policy).to have_received(:allowed?)
      end
    end

    context 'with a proper class constant instance_double' do
      let(:public_policy) { instance_double(Users::PublicPolicy) }

      before do
        allow(public_policy).to receive(:allowed?)
      end

      it 'returns true' do
        policy_enforcer.allowed?
        expect(public_policy).to have_received(:allowed?)
      end
    end

    context 'with an typoed class constant instance_double' do
      let(:public_policy) { instance_double(User:PublicPolicy) }

      before do
        allow(public_policy).to receive(:allowed?)
      end

      it 'fails because the constant is not defined' do
        policy_enforcer.allowed?
        expect(public_policy).to have_received(:allowed?)
      end
    end
  end
end
{% endhighlight %}

The result is the spec `with typo string instance double class constant` on line 22 lies to you.  It behaves like a plain old double and allows you to accept methods on classes that don't exist.

{% highlight shell %}
Users::PolicyEnforcer
  #allowed?
    with correct string instance_double class constant
      returns true
    with typo string instance_double class constant
      lies and returns true
    with a proper class constant instance_double
      returns true
    with an typoed class constant instance_double
      fails because the constant is not defined (FAILED - 1)

Failures:

  1) Users::PolicyEnforcer#allowed? with an typoed class constant instance_double fails because the constant isn not defined
     Failure/Error: let(:public_policy) { instance_double(User:PublicPolicy) }

     NameError:
       uninitialized constant PublicPolicy
     # ./spec/users/policy_enforcer_spec.rb:49:in `block (4 levels) in <top (required)>'
     # ./spec/users/policy_enforcer_spec.rb:52:in `block (4 levels) in <top (required)>'

Finished in 0.0175 seconds (files took 0.45833 seconds to load)
4 examples, 1 failure

Failed examples:

rspec ./spec/users/policy_enforcer_spec.rb:55 # Users::PolicyEnforcer#allowed? with an typoed class constant instance_double fails because the constant isn not
 defined
{% endhighlight %}
