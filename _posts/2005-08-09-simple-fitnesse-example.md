---
id: 61
title: Simple Fitnesse Example
date: 2005-08-09T22:23:06+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=61
permalink: /2005/08/09/simple-fitnesse-example/
categories:
  - software development
---
While I like the Fitnesse example built into the wiki, I really can&#8217;t get a feel for it until I hook the test fixtures into some of my own code. Stepwise:

  1. Download [Fitnesse](http://fitnesse.org/).
  2. Launch the run.bat or run.sh script to launch the Fitnesse web server on port 80.
  3. On the front page click on Edit.
  4. Copy the format for the Fitnesse.SuiteAcceptenceTests on a new line. In this case for Example Acceptence Tests. Click Save.
  5. Click on the link for the new page and add the following code:
<pre>!path /edgibbs/example_project/build/classes

!|com.edgibbs.fitexample.PersonFixtureTest|
|firstName|checkFirstName?|
|Harry |Harry    |
|Irga | Irga     |
|null | null |
</pre>

The path setting should point to the area where the classes are built. The firstName will set the firstName property, and the checkFirstName will return a String for the firstName from the fixture class.

  6. Run test, it should fail because class won&#8217;t exist.
  7. Create following class to test an overly simple javabean, Person. Person just has a firstName String property with getters/setters:
<pre>package com.edgibbs.fitexample;

import fit.ColumnFixture;

public class PersonFixtureTest extends ColumnFixture {
  private Person person = new Person();
  public String firstName;

  public String checkFirstName() {
    person.setFirstName(this.firstName);
    return person.getFirstName();
  }
}
</pre>

  8. Compile the class.
  9. Run the Test again. You should get green rows, yeah!
And yes, this example is pretty trivial, but I like to start small.