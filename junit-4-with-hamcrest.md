---
id: 809
title: JUnit 4 with Hamcrest
date: 2010-05-06T19:51:09+00:00
author: Ed Gibbs
layout: page
guid: http://edgibbs.com/?page_id=809
---
Hamcrest and open source library of nice syntactic matchers that was pulled into JUnit 4 as in 2007. My anecdotal evidence having mentored a number of development groups on JUnit testing is that the old standby assertEquals is still the default assertion that&#8217;s used in practice. I&#8217;ve given hands on demonstrations a number of times now and I wanted to put together a list of example tests showing the uses of the various core assertions now available. There is a decent [tutorial](http://code.google.com/p/hamcrest/wiki/Tutorial) on using Hamcrest, but this will focus primarily on the core assertions it adds to JUnit.

A good starting place is the assertThat() method that can now almost always be used in place of the traditional assertEquals(). assertThat() can be found in org.junit.Assert, but it defines using Hamcrest matchers in the signature:

{% highlight java %}
static <T> void assertThat(T actual, org.hamcrest.Matcher<T> matcher)
{% endhighlight %}

assertThat() is a drop in replacement for the traditional assertEquals() style assertions that generally reads more like a specification or the more modern BDD style. Basically it just reads better with something like this:

{% highlight java %}
assertThat("Hello World", is(equalTo(Greeter.greeting());
{% endhighlight %}

This would be in contrast to:

{% highlight java %}
assertEqual(Greeter.greetings(), "Hello World");
{% endhighlight %}


Admittedly the new assertThat() style is a bit more verbose, but it readability is significantly enhanced. Code gets read a lot more often that it&#8217;s written so readability of tests is important as well.

These are the core methods contained in **org.hamcrest.CoreMatchers** class they all just get used by means of a static import of **org.hamcrest.CoreMatchers**. They cover the following static methods in alphabetical order:

  * allOf()
  * any()
  * anyOf()
  * anything()
  * describedAs()
  * equalTo()
  * instanceOf()
  * is()
  * not()
  * notNullValue()
  * nullValue()
  * sameInstance()


## allOf()

allOf() is a simple assertion that just says all of the matcher arguments must be true. So in this example the string &#8220;Hello&#8221; must be not be null, an instance of String, and equal to the value &#8220;Hello&#8221;.

{% highlight java linenos %}
@Test
public void allOfExampleShowsAllMatchersMustAllBeTrue() throws Exception {
  assertThat("Hello", is(allOf(notNullValue(), instanceOf(String.class), equalTo("Hello"))));
}
{% endhighlight %}

A negative example might look like this:

{% highlight java linenos %}
@Test
public void allOfExampleShowsFailingIfOneMatcherDoesNotMatch() throws Exception {
  assertThat("Hello", is(not(allOf(notNullValue(), instanceOf(Integer.class)))));
}
{% endhighlight %}


## any()

This matcher just checks that the actual result is a class of a certain type. I don&#8217;t have any great use case for using this, but its included for completeness.

{% highlight java linenos %}
@Test
public void anyExampleChecksThatClassIsOfSameType() throws Exception {
  assertThat("Hello", is(any(String.class)));
}
{% endhighlight %}


In addition any superclass works as well:

{% highlight java linenos %}
@Test
public void anyExampleShowsStringIsAlsoAnObject() throws Exception {
  assertThat("Hello", is(any(Object.class)));
}
{% endhighlight %}


## anyOf()

If any of the matchers are true this assertion will pass. In the following example on the instanceOf(String.class) is true, but it still passes.

{% highlight java linenos %}
@Test
public void anyOfExampleReturnsTrueIfOneMatches() throws Exception {
  assertThat("Hello", is(anyOf(nullValue(), instanceOf(String.class), equalTo("Goodbye"))));
}
{% endhighlight %}

And the negative case where all the matchers are false:

{% highlight java linenos %}
@Test
public void anyOfExampleFailingIfAllMatchersAreFalse() throws Exception {
  assertThat("Hello", is(not(anyOf(nullValue(), instanceOf(Integer.class), equalTo("Goodbye")))));
}
{% endhighlight %}

## anything()

This matcher will always evaluates to true. Again don&#8217;t have a good example use case for this:

{% highlight java linenos %}
@Test
public void anythingExampleAlwaysReturnsTrue() throws Exception {
  assertThat("Hello", is(anything()));
}
{% endhighlight %}

The implementation code is really this simple:

{% highlight java linenos %}
// From the hamcrest IsAnything class
public boolean matches(Object o) {
  return true;
}
{% endhighlight %}


## describeAs()

This allows you to override the default description for a matcher. Not a lot of use cases for this.

{% highlight java linenos %}
public void describedAsExample() throws Exception {
  Matcher< ?> matcher = describedAs("My Description", anything());
  Description description = new StringDescription().appendDescriptionOf(matcher);
  assertThat("My Description", is(description.toString()));
}
{% endhighlight %}

## equalTo

This is one of the core matchers that duplicates the functionality of the old assertEquals().

{% highlight java linenos %}
@Test
public void equalToExampleAddingTwoPlusTwo() throws Exception {
  assertThat(2 + 2, is(equalTo(4)));
}
{% endhighlight %}

## instanceOf

instanceOf() checks that you have an instance of a particular type:

{% highlight java linenos %}
@Test
public void instanceOfExampleForString() throws Exception {
  assertThat("Hello", is(instanceOf(String.class)));
}
{% endhighlight %}

## is()

One of my favorite matchers, primarily used for syntactic sugar to increase the readability. The following silly example shows its use as syntactic sugar by using it three times in a row:

{% highlight java linenos %}
@Test
public void isExampleShortCutAsJustSyntacticSugarUsedThreeTimes() throws Exception {
  assertThat("Hello", is(is(is(notNullValue()))));
}
{% endhighlight %}

It can also be used as a shortcut for instanceOf when you pass in a class argument:

{% highlight java linenos %}
@Test
public void isExampleShortCutForIsInstanceOfClass() throws Exception {
  assertThat("Hello", is(String.class));
  assertThat("Hello", instanceOf(String.class));
}
{% endhighlight %}

And there is a shortcut for equalsTo as well where you pass in any value:

{% highlight java linenos %}
@Test
public void isExampleShortCutForIsEqualTo() throws Exception {
  assertThat("Hello", is("Hello"));
  assertThat("Hello", equalTo("Hello"));
}
{% endhighlight %}

## not()

not() just reverses the outcome of a matcher:

{% highlight java linenos %}
@Test
public void notExampleJustInvertsExpression() throws Exception {
  assertThat("Hello", is(not(instanceOf(Integer.class))));
}
{% endhighlight %}


## notNullValue()

Simply does a null check.

{% highlight java linenos %}
@Test
public void notNullValueExampleForString() throws Exception {
  assertThat("Hello", is(notNullValue()));
}
{% endhighlight %}

It can also do a type check as well by passing in a class argument:

{% highlight java linenos %}
@Test
public void notNullValueExampleForAClass() throws Exception {
  assertThat("Hello", is(notNullValue(Object.class)));
}
{% endhighlight %}

## nullValue

Assert a null value:

{% highlight java linenos %}
@Test
public void nullValueExampleWithANull() throws Exception {
  assertThat(null, is(nullValue()));
}
{% endhighlight %}

Assert a null value with a type check:

{% highlight java linenos %}
@Test
public void nullValueExampleWithANullType() throws Exception {
  Integer nothing = null;
  assertThat(nothing, is(nullValue(Integer.class)));
}
{% endhighlight %}

## sameInstance()

Checks if the two object references are the same using the == operator:

{% highlight java linenos %}
@Test
public void sameInstanceExample() throws Exception {
  Object object = new Object();
  Object sameObject = object;
  assertThat(object, is(sameInstance(sameObject)));
}
{% endhighlight %}

## Example Code

{% highlight java linenos %}
package com.edgibbs.junit.example;

import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.hamcrest.StringDescription;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.assertThat;

public class HamcrestExamples {

  @Test
  public void allOfExampleShowsAllMatchersMustAllBeTrue() throws Exception {
    assertThat("Hello", is(allOf(notNullValue(), instanceOf(String.class), equalTo("Hello"))));
  }

  @Test
  public void allOfExampleShowsFailingIfOneMatcherDoesNotMatch() throws Exception {
    assertThat("Hello", is(not(allOf(notNullValue(), instanceOf(Integer.class)))));
  }

  @Test
  public void anyExampleChecksThatClassIsOfSameType() throws Exception {
    assertThat("Hello", is(any(String.class)));
  }

  @Test
  public void anyExampleShowsStringIsAlsoAnObject() throws Exception {
    assertThat("Hello", is(any(Object.class)));
  }

  @Test
  public void anyOfExampleReturnsTrueIfOneMatches() throws Exception {
    assertThat("Hello", is(anyOf(nullValue(), instanceOf(String.class), equalTo("Goodbye"))));
  }

  @Test
  public void anyOfExampleFailingIfAllMatchersAreFalse() throws Exception {
    assertThat("Hello", is(not(anyOf(nullValue(), instanceOf(Integer.class), equalTo("Goodbye")))));
  }

  @Test
  public void anythingExampleAlwaysReturnsTrue() throws Exception {
    assertThat("Hello", is(anything()));
  }

  // Feels very esoteric and not for typical usage used to override the description
  @Test
  public void describedAsExample() throws Exception {
    Matcher< ?> matcher = describedAs("My Description", anything());
    Description description = new StringDescription().appendDescriptionOf(matcher);
    assertThat("My Description", is(description.toString()));
  }

  @Test
  public void equalToExampleAddingTwoPlusTwo() throws Exception {
    assertThat(2 + 2, is(equalTo(4)));
  }

  @Test
  public void instanceOfExampleForString() throws Exception {
    assertThat("Hello", is(instanceOf(String.class)));
  }

  @Test
  public void isExampleShortCutForIsInstanceOfClass() throws Exception {
    assertThat("Hello", is(String.class));
    assertThat("Hello", instanceOf(String.class));
  }

  @Test
  public void isExampleShortCutAsJustSyntacticSugarUsedThreeTimes() throws Exception {
    assertThat("Hello", is(is(is(notNullValue()))));
  }

  @Test
  public void isExampleShortCutForIsEqualTo() throws Exception {
    assertThat("Hello", is("Hello"));
    assertThat("Hello", equalTo("Hello"));
  }

  @Test
  public void notExampleJustInvertsExpression() throws Exception {
    assertThat("Hello", is(not(instanceOf(Integer.class))));
  }

  @Test
  public void notNullValueExampleForString() throws Exception {
    assertThat("Hello", is(notNullValue()));
  }

  @Test
  public void notNullValueExampleForAClass() throws Exception {
    assertThat("Hello", is(notNullValue(Object.class)));
  }

  @Test
  public void nullValueExampleWithANull() throws Exception {
    assertThat(null, is(nullValue()));
  }

  @Test
  public void nullValueExampleWithANullType() throws Exception {
    Integer nothing = null;
    assertThat(nothing, is(nullValue(Integer.class)));
  }

  @Test
  public void sameInstanceExample() throws Exception {
    Object object = new Object();
    Object sameObject = object;
    assertThat(object, is(sameInstance(sameObject)));
  }

}
{% endhighlight %}
