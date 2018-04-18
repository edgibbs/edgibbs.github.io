---
id: 893
title: 'Grails Unit Testing: Mocking With MetaClass Stubs'
date: 2011-04-17T13:06:21+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=893
permalink: /2011/04/17/grails-unit-testing-mocking-with-metaclass-stubs/
categories:
  - groovy
  - software development
  - test driven development
---
On a recent project I ran into issues with testing controllers in Grails. Starting test first, I spent some early time figuring out how much support there was out of the box for unit testing Grails domain classes and controllers. I setup [Spock](http://code.google.com/p/spock/) as a plugin and plunged in. I was dealing with a legacy database which had 100% compound primary keys so many of the findBy type operations that are well supported for controller testing are of no help. Often I found I needed to mock a call to a find or findAll with HQL syntax or a criteria call. I knew metaClass mocking could work here, but I wanted to understand better how that would impact the rest of the code after I started replacing methods on the fly. Turns out Grails unit testing has built in support for cleaning up metaClass hacking after every test with the registerMetaClass() method in GrailsUnitTestCase. [Mrhaki](http://mrhaki.blogspot.com/) has a good [post](http://mrhaki.blogspot.com/2010/03/grails-goodness-using-metaclass-with.html) on this. Here&#8217;s an Spock example:

{% highlight groovy linenos %}
import grails.plugin.spock.ControllerSpec


class ContractControllerSpec extends ControllerSpec {

  def setup() {
    registerMetaClass Contract
  }

 def "validateContract() returns true for an existing contract"() {
    given:
    mockDomain(Contract)
    def contract = new Contract(division: '33', unit: '99', contractNumber: 'C7777777').save(flush: true)
    controller.params.division = '33'
    controller.params.unit = '99'
    controller.params.contractNumber = 'C7777777'
    Contract.metaClass.static.find = { String query, Map namedArgs -> contract }

    when:
    controller.validateContract()

    then:
    "TRUE" == controller.response.contentAsString
  }

}
{% endhighlight %}

Grails has support for the same idea using mockFor(), but the syntax is much like EasyMock. The same test would look like:

{% highlight groovy linenos %}
import grails.plugin.spock.ControllerSpec


class ContractControllerSpec extends ControllerSpec {

 def "validateContract() returns true for an existing contract"() {
    given:
    mockDomain(Contract)
    def contract = new Contract(division: '33', unit: '99', contractNumber: 'C7777777').save(flush: true)
    controller.params.division = '33'
    controller.params.unit = '99'
    controller.params.contractNumber = 'C7777777'

  // EasyMock like syntax
  def mockContract = mockFor(Contract)
    mockContract.demand.static.find(..5) { String query, Map namedArgs -> null }

    when:
    controller.validateContract()

    then:
    "TRUE" == controller.response.contentAsString
  }

}
{% endhighlight %}

For pure stubs I prefer the syntax of just using MetaClass. I often don&#8217;t care about validating the exact calls to the dependent class so I don&#8217;t really want a full mock. You don&#8217;t need a call to registerMetaClass() because mockFor() does this for you.
