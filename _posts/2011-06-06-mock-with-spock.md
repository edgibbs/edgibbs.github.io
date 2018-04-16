---
id: 903
title: Mock With Spock
date: 2011-06-06T19:38:16+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=903
permalink: /2011/06/06/mock-with-spock/
categories:
  - groovy
  - software development
  - test driven development
---
My default rule with mocking is to try to stick to stubs where possible. I don&#8217;t enjoy having to setup and verify interactions with mocks, but sometimes you have some code where that&#8217;s exactly what you need to do. I&#8217;ve used many frameworks in Java over the years from EasyMock to Mockito, but I was quite happy with how easy it was to do in Spock. I recently found myself having to build a test harness around some legacy code. The real world code was more involved, but it looked something like this:

{% highlight groovy linenos %}
public void addDefaultQuestions(Category category) {
  if (categoryDao.getCategory(category.getId()).getQuestions().isEmpty()) {
    for (Question question : category.getQuestions()) {
      if (question.isDefaultQuestion()) {
        categoryDao.addQuestion(question, true);
      } else {
        categoryDao.addQuestion(question, false);
      }
    }
  }
}
{% endhighlight %}

The method is taking a category, checking if any questions related to the category exist in the database and then saving all the questions with a valid flag set to true or false. Not unusual in a typical corporate application, but I want to test two things:

  * I can add new questions to the database with the proper valid flag.
  * If the database category already has some questions then do nothing.

After walking through the Spock [mocking documentation](http://code.google.com/p/spock/wiki/Interactions) I had a pretty good sense of the approach. In Spock it&#8217;s referred to as interactions, but it doesn&#8217;t follow the typical expect-run-verify pattern. You just verify what you need to if you need to. And given a choice I prefer not to have to verify the mock at all. 

With this code I needed to mock the categoryDao which used straight JDBC and made calls to the real database. That meant I needed a way to verify that the questions were added correctly with calls to the categoryDao. Hence I needed the power of an actual mock and not just a stub class.

The first test would show that I could save new questions in a category to the database:

{% highlight groovy linenos %}
def "should only insert new default questions"() {
  given:
  def question1 = new Question(defaultQuestion: true)
  def question2 = new Question(defaultQuestion: false)
  def category = new Category(questions: [question1, question2])

  CategoryDao dao = Mock()
  dao.getCategory(_) >> new Category()

  CategoryService service = new CategoryService()
  service.setCategoryDao(dao)

  when:
  service.addDefaultQuestions(category)

  then:
  1 * dao.addQuestion(_, true)
  1 * dao.addQuestion(_, false)

}
{% endhighlight %}


So the steps are:

  1. Setup a Category object with two questions.
  2. Create a mock dao.
  3. Define a method and its default return value on the mock DAO. 
      1. We define arguments to getCategory() with a wildcard operator the underscore standing in for an id.
      2. Then with the right shift operator (>>) we define that we will return a newly created Category object.
  4. Inject the mock into the service class we&#8217;re testing.
  5. Finally, we make verifications on the addQuestion() method by just stating the number of times we expect the method to be called with a given set of arguments, again reusing the wildcard underscore character.

You can even specify the particular order you expect by breaking the verifications into separate **then:** blocks. For this example it wouldn&#8217;t matter on the order, but in case it did the last when then block would change to:

{% highlight groovy linenos %}
when:
  service.addDefaultQuestions(category)

  then:
  1 * dao.addQuestion(_, true)

  then:
  1 * dao.addQuestion(_, false)
{% endhighlight %}
<div class="codecolorer-container groovy vibrant overflow-off" style="overflow:auto;white-space:nowrap;">

And to round out testing the legacy Java code we need to test the negative example where it should do nothing if there are already questions in the database for the given category.

{% highlight groovy linenos %}
 def "should add no questions if questions are already in database"() {
    given:
    def question1 = new Question(defaultQuestion: true)
    def question2 = new Question(defaultQuestion: false)

    CategoryDao dao = Mock()
    dao.getCategory(_) >> new Category(questions: [question1])

    CategoryService service = new CategoryService()
    service.setCategoryDao(dao)

    when:
    service.addDefaultQuestions(new Category(questions: [question2]))

    then:
    * dao.addQuestion(_,_)

  }
{% endhighlight %}

So we can test for the negative case by just verifying that addQuestion was called zero times.
