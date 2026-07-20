---
title: "Testing Patterns: Given-When-Then vs Arrange-Act-Assert"
permalink: /2024/12/21/given-when-then-versus-arrange-act-assert
layout: post
categories:
  - software development
  - ruby
  - rspec
  - test driven development
---

Anecdotally I've recently noticed an uptick in presenting the AAA pattern for writing good tests. Most of my career I've thought about this from the [Given/When/Then](https://martinfowler.com/bliki/GivenWhenThen.html) paradigm. My assumption much like the dominance of RSpec in Ruby was that was the common explanation/mnemonic when describing how to layout tests. The only other pattern I had a sense of was the old xUnit idea based around its minimalist methods:

- setup
- assert
- teardown

Given/When/Then was such a default that Jim Weyrich even created his own testing framework based on it, [rspec-given](https://github.com/jimweirich/rspec-given).  It comes out of the BDD movement where the focus was to not get so focused on the mechanics of testing, but more on the value of specifying expectations up front before writing the code to implement the tests. Gherkin sprouted out of this and it was further solidified by being built into tools like Cucumber and RSpec Given.

```ruby
describe Formatter
  describe "#add_emojis" do
    it "adds emojis to the string" do
      # Given
      formatter = Formatter.new
      string = "Hello, World!"

      # When
      formatted_string = formatter.add_emojis(string)

      # Then
      expect(formatted_string).to eq("👋, 🌎!")
    end
  end
end
```

Apparently [AAA](https://xp123.com/3a-arrange-act-assert/) was coined way back in the fairly early XP days by Bill Wake. Reading through his reasoning I appreciate that he was trying to define the steps as:

1. **Arrange** -> setup the collaborating object, mocks and construct the object
1. **Act** -> actually perform an action usually calling a method or function
1. **Assert** -> make the assertions

 When actually writing these he mentions that a TDD/BDD approach he favors is actually to sort of reverse the order for writing a test as:

1. **Assert** -> write this first because you're trying to think about what the object should actually do (Test Driven Design)
1. **Arrange** -> now you have an idea of what you need to setup the object
1. **Act** -> actually call the method/function

```ruby
describe ShoppingCart do
  describe "#total" do
    it "updates the total when adding a book" do
      # Arrange
      cart = ShoppingCart.new
      keycaps = Product.new(name: "Emoji Keycaps", unit_price: Currency.new(59.99, "USD"))
      switch = Product.new(name: "Clicky Switches", unit_price: Currency.new(0.27, "USD"))

      # Act
      cart.add_item(keycaps)
      75.times do
        cart.add_item(switch)
      end

      # Assert
      expect(cart.total).to eq(80.24)
    end
  end
end
```
I'm still sold on the nice rhyming structure of Given/When/Then as easy to remember and a little nicer sounding. People often shortcut to the `AAA` pattern and it becomes easy to forget what it's trying to remind you of. As I get further in my career I find it encouraging from the early days of TDD where trying to get people to even think about writing a test was a long often fruitless discussion. Nowadays I have time to think about very small aspects of testing like helpful shortcuts to remember the common testing patterns.
