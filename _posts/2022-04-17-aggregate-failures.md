---
title: Aggregate Failures
layout: post
permalink: /2022/04/17/aggregate-failures/
categories:
  - software development
  - test driven development
  - ruby
  - rspec
---

After working on several large rails codebases in the last 10 years I've seen a familiar pattern.
Many tests in Rails projects are integration tests because they rely on actual database objects existing.
One assertion per test is great rule when you don't have tens of thousands of specs running. `:aggregate-failures`
allows you to have multiple assertions while still reporting on each failure clearly.

As a bonus it is honored by `Rubocop RSpec RSpec/MultipleExpectations`. Not sure why this isn't
documented better with Rubocop RSpec. Here is the code within the `MultipleExpectations` class that
enforces the one assert per spec rule:

[MultipleExpectations](https://github.com/rubocop/rubocop-rspec/blob/master/lib/rubocop/cop/rspec/multiple_expectations.rb)

{% highlight ruby %}
def on_block(node)
  return unless example?(node)

  return if example_with_aggregate_failures?(node)

  expectations_count = to_enum(:find_expectation, node).count

  return if expectations_count <= max_expectations

  self.max = expectations_count

  flag_example(node, expectation_count: expectations_count)
end
{% endhighlight %}

And you don't need to feel guilty about adding aggregate failures:

- It speeds up test runs because it doesn't do multiple setups
- By default anything that uses ActiveRecord is not a true unit test
- You still get all the errors if multiple lines fail
- Speed of test run on any significant Rails project should almost always win
