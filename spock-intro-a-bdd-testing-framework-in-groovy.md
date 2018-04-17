---
id: 864
title: Spock Intro
date: 2010-11-28T21:12:50+00:00
author: Ed Gibbs
layout: page
guid: http://edgibbs.com/?page_id=864
---
### A BDD Testing Framework in Groovy

Spock is a welcome addition to the testing toolbox for Java developers. Historically JUnit 3 and 4 have been the dominant testing frameworks with TestNG making a small splash. All of these tools are traditional unit testing frameworks that setup state, invoke something, and then make assertions about the results. They are testing frameworks at their core so much so that JUnit 3 even required every method begin with the 4 little letters **test**. Spock brings a nice BDD (Behavior Driven Development) framework to Java land.

Behavior Driven Development is a movement to focus on the power of doing small bits of design incrementally by utilizing TDD. The very concept of the word test has some negative connotations and so it is dropped in BDD frameworks. J.B. Rainsberger has a [great quote](http://www.jbrains.ca/permalink/the-worlds-shortest-article-on-behavior-driven-development-revisited) about BDD:

> It is Test-Driven Development (TDD) practiced correctly; nothing more.
> 
> &#8212; J.B. Rainsberger 

In many ways this is accurate. The goal of Behavior Driven Development is to focus on examples or specifications and not &#8216;tests&#8217;. The difference is semantic, but it can lead to some powerful realizations.

Though unit tests have become a common technique in the developer community, the true payoff of a TDD approach is significantly less common. Many developers get value out of adding suites of tests that cover regression issues, but the focus is often on adding the tests after the code and sometimes days or weeks after the production code was written.

So the BDD movement from which Spock springs has its&#8217; roots in a tool in Java called JBehave. Historically [JBehave](http://jbehave.org/) was the first of these frameworks, but Java has never been a first class language for expressing nice DSLs. The key framework which arose a little later in Ruby proved to be RSpec. RSpec took off over time and is now heavily used within the Ruby community. It focused on having nice sounding names for features and assertions using keywords like describe and method names like &#8220;should be able to login&#8221;. As Rainsberger and others have described it is entirely possible to write BDD style code even in Java especially with JUnit 4 syntax. You take the approach of giving very descriptive method names and assert nicer syntax with assertThat and the Hamcrest matchers. I myself often use this approach when embedded on a project with a large existing JUnit test suite. (see more about JUnit 4 with Hamcrest matchers for better syntax in [my tutorial](/junit-4-with-hamcrest/).)

Just for an example here&#8217;s a simple snippet of code in RSpec:

{% highlight ruby %}
describe "A new user" do
  it "should have a 5 free invites" do
    user = User.new
    user.invites.should == 5
  end
end
{% endhighlight %}

Spock is a newer BDD framework utilizing Groovy and running on the JVM. Though not very old it is rapidly picking up steam and being utilized by many developers who still code primarily in Java. It leverages heavily from earlier BDD frameworks like RSpec, but adds some nice syntactic sugar.

A classic code example is the following:

{% highlight groovy %}
def "should push 1 element onto FixedStack"() {
  given:
  def stack = new FixedStack()

  when:
  stack.push("elem")

  then:
  stack.size() == 1
  stack.peek() == "elem"
}
{% endhighlight %}

It utilizes the same techniques of descriptive method names or features and adds the concept of given/when/then syntax for assertions. These follow along very well with the concept of user stories at a very low level. Another nicety is the ability to have parameterized data so that you can specify a number of scenarios without having lots of little tests. It handles exceptions with a bit of syntactic sugar. And much like RSpec it hands off to another framework for browser functional testing, in this case Geb.

To pursue extra expressiveness with Spock you can add descriptions to each block. Then you can read it like a step by step specification. One of the greatest features is the handling of failed specs. Instead of just showing a failed spec, it diagrams the assertions and draws nice vertical bars showing exactly what was specified and how the results differed from the expectations. That alone is a very compelling feature especially when with some test runners you end up having to look at the JUnit HTML reports to figure out why the test is really failing.

### Spock Basics

To create a Spock spec you simply extend the spock.lang.Specification class from the framework. Since Spock takes advantage of JUnit 4 you can simply run it using JUnit runners or command line ant/maven. And it works with Eclipse, IntelliJ and others by just piggy backing on their support of JUnit. The first thing you would do is define a feature method which has slightly unusual syntax if you haven&#8217;t seen something like RSpec before:

{% highlight groovy %}
def "a user can be retrieved using their email"() {}

def "adding a product to the shopping cart updates the total"() {}

def "a user should be able to change their password"() {}
{% endhighlight %}

It has a few traditional setup and cleanup methods: 

  * setup() &#8211; run before every feature method
  * cleanup() &#8211; run after every cleanup method
  * setupSpec() &#8211; run before first feature
  * cleanupSpec() &#8211; run after the last feature

Blocks are the heart of the Spock and these are the core Spock blocks:

  * given: preconditions, data fixtures
  * setup: alias for given (JUnit syntax)
  * when: actions that trigger some outcome
  * then: make assertions about the outcome
  * expect: shorthand for when & then
  * where: applies varied inputs
  * and: subdivides other blocks
  * cleanup: post-conditions, housekeeping

Spock follows a basic pattern for most specifications in regards to blocks. In general you have a given: block where you do some setup for the test. Next comes a when block where you actually execute the method you want to test. Then you have a then: block to make assertions that the state is as expected.

### Spock By Example

Let&#8217;s dive in with an example of how you might build a Spock specification. This hypothetical example is borrowed from an old JUnit book [Pragmatic Unit Testing in Java with JUnit](http://www.pragprog.com/titles/utj/pragmatic-unit-testing-in-java-with-junit). Say you wanted to build a Largest class which took a list of numbers and returned the largest number. Let&#8217;s start with a simple specification:

{% highlight groovy %}
package com.edgibbs.spock.tutorial

import spock.lang.Specification

class LargestSpec extends Specification {

  def "Largest number should be returned when first in list"() {
    when:
    def largest = Largest.max([3, 2, 1])

    then:
    largest == 3
  }
{% endhighlight %}

Obviously this will fail initially so we&#8217;ll start a bare bones largest class to pass this test:

{% highlight groovy linenos %}
package com.edgibbs.spock.tutorial

class Largest {

  def static max(list) {
    3
  }

}
{% endhighlight %}

OK, now onto the second spec:

{% highlight groovy %}
  def "Largest number should be returned regardless of order"() {
    expect:
    Largest.max([first, second, third]) == largest

    where:
    first < < [2, 4, 8]
    second << [4, 8, 2]
    third << [8, 2, 4]
    largest << [8, 8, 8]

  }
{% endhighlight %}

So here we have some some new features from Spock. At first this code can be a bit of a handful, but we&#8217;ll walk through all the code. So our when: and then: blocks are missing now replaced with expect: and where:. The expect: block is just a shorthand for then: and when:. Next comes the where: block. The where: block allows you to vary the input to the when: or expect: block. So you can setup multiple scenarios in a single specification. The first time through it runns the following assertion taking the first element in each list:

{% highlight groovy %}
  expect:
  Largest.max[2,4,8] == 8
{% endhighlight %}

The second time through:

{% highlight groovy %}
  expect:
  Largest.max[2,4,8] == 8
{% endhighlight %}

This can be very helpful testing similar scenarios without having to write a lot of smaller tests. Not something you use constantly, but occasionally very nice. Running this test yields our first failure:

{% highlight groovy %}
Condition not satisfied:

Largest.max([first, second, third]) == largest
        |    |      |       |       |  |
        3    2      4       8       |  8
                                    false

  at com.edgibbs.spock.tutorial.LargestSpec.Largest number should be returned regardless of order(LargestSpec.groovy
{% endhighlight %}

The best part here is the error message tells you exactly why the assertion failed with a nice visual text representation. Time to fix our naive implementation and get the test passing:

{% highlight groovy %}
 def static max(list) {
    def maximum =
    list.each {item ->
       if (item > maximum) {
         maximum = item
       }
    }
    maximum
  }
{% endhighlight %}

Now our test passes for all of scenarios. Before moving on we might want to look at a little refactoring that Spock allows for to make our test read a bit better. Currently we&#8217;re making assertions using lists in the test, but we can also use a nicer table like syntax for all of the inputs and assertion values. It looks much like the table format used in [Fitnesse](http://fitnesse.org/). So our slightly refactored test now looks like:

{% highlight groovy %}
def "Largest number should be returned regardless of order"() {
  expect:
  Largest.max([first, second, third]) == largest

  where:
  first | second | third | largest
    2   |    4   |   8   |    8
    4   |    8   |   2   |    8
    8   |    2   |   4   |    8
  }
{% endhighlight %}

Running the refactored test passes and so we&#8217;re onto brainstorming a few more tests:

{% highlight groovy %}
def "Largest number should be returned even with duplicates"() {
    expect:
    Largest.max([8, 7, 3, 3]) == 8
}
{% endhighlight %}

Here we use the simplest block syntax using just an expect: block. This passes so we move onto another test say of only a single entry in the list:

{% highlight groovy %}
def "Largest number should work with only a single entry"() {
  when:
  def largest = Largest.max([1])

  then:
  largest == 1
}
{% endhighlight %}

Again this passes. So thinking of negative cases let&#8217;s try a larger list:

{% highlight groovy %}
def "Largest number with a 10 item list should work"() {
  given:
  def list = [, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  when:
  def largest = Largest.max(list)

  then:
  largest == 9
}
{% endhighlight %}

This test passes as well. Note we&#8217;ve used the given: when: then: pattern here to write a very clear spec. OK, time to try a few more negative test cases: How about a list of negative numbers:

{% highlight groovy %}
def "Largest will return correct negative numbers"() {
  when:
  def largest = Largest.max([-9, -8, -7])

  then:
  largest == -7
}
{% endhighlight %}

Here we get another failure:

{% highlight groovy %}
Condition not satisfied:

largest == -7
|       |
0       false

  at com.edgibbs.spock.tutorial.LargestSpec.Largest will return correct negative numbers(LargestSpec.groovy:60)
{% endhighlight %}

This forces us to change our naive implementation. Let&#8217;s not set maximum to zero initially.

{% highlight groovy %}
def static max(list) {
  def maximum
  list.each {item ->
     if (item > maximum) {
       maximum = item
     }
  }
  maximum
}
{% endhighlight %}

Now with our test passing it&#8217;s time to handle cases like passing in an empty list. We&#8217;d like to throw an exception if our max method get an empty list so the spec looks like the following:

{% highlight groovy %}
def "Largest will fail on an empty list with error message"() {
  when:
  def largest = Largest.max([])

  then:
  RuntimeException error = thrown()
  error.message == "max: Empty List"
}
{% endhighlight %}

This fails of course because no exception was thrown. The thrown() syntax here is a Spock method that sets up an expectation of an error being thrown. It can even return the error allowing you to check the message. So we need to implement a simple exception handling in Largest.

{% highlight groovy %}
def static max(list) {
  def maximum
  if (list?.size() == ) {
    throw new RuntimeException("max: Empty List")
  }
  list.each {item ->
     if (item > maximum) {
       maximum = item
     }
  }
  maximum
}
{% endhighlight %}

Last let&#8217;s finish with passing in a null and expecting that we&#8217;ll get back a zero. We also want to avoid any NullPointerException so we&#8217;ll check that we don&#8217;t see one of those. The last test looks like:

{% highlight groovy %}
def "Passing in a null should return zero "() {
  when:
  def largest = Largest.max(null)

  then:
  notThrown(NullPointerException)
  largest == 
}
{% endhighlight %}

The notThrown() method does what you&#8217;d expect. It checks that an NPE is not thrown in this case. That assertion actually passes, but it doesn&#8217;t return what we expected:

{% highlight groovy %}
Condition not satisfied:

largest == 0
|       |
null    false

  at com.edgibbs.spock.tutorial.LargestSpec.What if we pass in null(LargestSpec.groovy:106)
{% endhighlight %}

Turns out we need to set the default to return zero in this sort of case. So we change Largest slightly again:

{% highlight groovy %}
def static max(list) {
  def maximum =
  if (list?.size() == ) {
    throw new RuntimeException("max: Empty List")
  }
  list.each {item ->
     if (item > maximum) {
       maximum = item
     }
  }
  maximum
}
{% endhighlight %}

That passes, but now we&#8217;ve broken another the test case for negative numbers:

{% highlight groovy %}
Condition not satisfied:

largest == -7
|       |
0       false

  at com.edgibbs.spock.tutorial.LargestSpec.Largest will return correct negative numbers(LargestSpec.groovy:60)
{% endhighlight %}

OK, maybe we should rethink passing in nulls should have the same behavior as passing an empty list so we should just return an error.

{% highlight groovy %}
 def "Should return exception if passing in null"() {
  when:
  def largest = Largest.max(null)

  then:
  RuntimeException error = thrown()
  error.message == "max: Empty List"
}
{% endhighlight %}

Now we need to make the change to the max() method again to get all the tests passing hopefully.

{% highlight groovy %}
def static max(list) {
  def maximum
  if (!list) {
    throw new RuntimeException("max: Empty List")
  }
  list.each {item ->
     if (item > maximum) {
       maximum = item
     }
  }
  maximum
}
{% endhighlight %}

Now all the tests pass successfully. The final classes look like:

{% highlight groovy linenos %}
package com.edgibbs.spock.tutorial

import spock.lang.Specification

class LargestSpec extends Specification {

  def "Largest number should be returned when first in list"() {
    when:
    def largest = Largest.max([3, 2, 1])

    then:
    largest == 3
  }

  def "Largest number should be returned regardless of order"() {
    expect:
    Largest.max([first, second, third]) == largest

    where:
    first | second | third | largest
      2   |    4   |   8   |    8
      4   |    8   |   2   |    8
      8   |    2   |   4   |    8
  }

  def "Largest number should be returned even with duplicates"() {
    expect:
    Largest.max([8, 7, 3, 3]) == 8
  }

  def "Largest number should work with only a single entry"() {
    when:
    def largest = Largest.max([1])

    then:
    largest == 1
  }

  def "Largest number with a 10 item list should work"() {
    given:
    def list = [, 1, 2, 3, 4, 5, 6, 7, 8, 9]

    when:
    def largest = Largest.max(list)

    then:
    largest == 9
  }

  def "Largest will return correct negative numbers"() {
    when:
    def largest = Largest.max([-9, -8, -7])

    then:
    largest == -7
  }

  def "Largest will fail on an empty list"() {
    when:
    def largest = Largest.max([])

    then:
    thrown(RuntimeException)
  }

  def "Largest will fail on an empty list with error message"() {
    when:
    def largest = Largest.max([])

    then:
    RuntimeException error = thrown()
    error.message == "max: Empty List"
  }

  def "Should return exception if passing in null"() {
    when:
    def largest = Largest.max(null)

    then:
    RuntimeException error = thrown()
    error.message == "max: Empty List"
  }

}
{% endhighlight %}

The implementation class for Largest:

{% highlight groovy linenos %}
package com.edgibbs.spock.tutorial

class Largest {

  def static max(list) {
    def maximum
    if (!list) {
      throw new RuntimeException("max: Empty List")
    }
    list.each {item ->
       if (item > maximum) {
         maximum = item
       }
    }
    maximum
  }

}
{% endhighlight %}

### Additional Note On Spock&#8217;s Block Syntax

Spock&#8217;s block given/when/then syntax is a key feature I got asked a while back in a presentation on whether this was just Groovy syntax that he didn&#8217;t know. I replied that I wasn&#8217;t aware of it, and I wasn&#8217;t quite sure how they did it. That little itch eventually turned into diving head first into the source code to figure out how it came about. I expected I would be looking at some typical DSL Expando metaclass stuff.

It turns out Spock is using AST Transformation that got added to Groovy 1.6. The labels like given: or when: are transformed by Spock before they get compiled down to bytecode. This allows you to have a nice expressive syntax with a simple block structure.
