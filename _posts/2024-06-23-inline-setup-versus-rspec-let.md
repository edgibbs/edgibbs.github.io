---
title: "Inline setup versus let in RSpec"
layout: post
permalink: /2024/06/23/
categories:
  - ruby
  - software development
  - test driven development
---

`let` has a long history in RSpec having been introduced with a [commit](https://github.com/rspec/rspec-core/commit/4d67748f) in 2009 and rolled out as
part of RSpec 2. I adopted it early on as the aesthetics appealed to me with `let` variables being defined first in little blocks with symbols. One of
our engineers wrote a macro in vim to quickly hoist instance variables in older style RSpec tests to let declarations. It became the default
style for everyone in RSpec with only a bit of controversy around `let!` which could be easy to miss in tests. I knew about the lazy initialization, but
it was the aesthetics I prized.

I remember a bit of a community debate a few years later with a famous Thoughtbot blog post entitled [Let's
Not](https://robots.thoughtbot.com/lets-not). It argued pretty convincingly that let was a mystery guest pattern which you don't want when writng
clear tests. Since our team's default at that point was to use let, but we wrote pretty small Sandi Metz style classes with a single responsibility,
the `let`s weren't causing a big headache. If the code and the specs were visible in a single editor window, it was easy to see what was going on.

Fast forward to working on one of the largest Ruby codebases in the world and I got reintroduced to the idea of containing the entire test inline.
Much of the codebase doesn't fit in a single editor window and suddenly those little `let`s are screens away and hard to find. Add with nested contexts,
shared examples and the like I was really hating `let`. Some of the more painful specs potentially executed up to 100 `let`s before running an
individual spec and often fired hundreds of SQL queries. I continued to use it on newer refactored code, but eventually the team started to cut
back to allowing fewer lets in a given spec as a compromise. Today my default is to write the entire context of the test inline with no `let`s at all.

So a let heavy spec like the following is forced into:

```ruby
RSpec.describe BlogPost do
  let(:author) { Author.new(name: "Gunther Hemingway") }
  let(:editor) { Editor.new(name: "Jordon Adams") }
  let(:category) { Category.new(name: "technology") }
  let(:comments) do
    [
      Comment.new(author: "hank", content: "great post!"),
      Comment.new(author: "lisa", content: "very informative."),
    ]
  end
  let(:tags) { ["ruby", "software development", "tdd"] }
  let(:blog_post) do
    BlogPost.new(
      title: "rspec and let",
      content: "using let in rspec can help with...",
      author: author,
      editor: editor,
      category: category,
      comments: comments,
      tags: tags
    )
  end

  describe "#publish" do
    it "notifies the author and editor when published" do
      blog_post.publish

      expect(author.notifications.last).to eq("your post 'rspec and let' has been published.")
      expect(editor.notifications.last).to eq("the post 'rspec and let' you edited has been published.")
    end
  end
end
```

This much more explict style:

```ruby
RSpec.describe BlogPost do
  describe "#publish" do
    it "notifies the author and editor when published" do
      blog_post = BlogPost.new(
        title: "rspec and let",
        content: "using let in rspec can help with...",
        author: Author.new(name: "Gunther Hemingway")
        editor: Editor.new(name: "Jordon Adams")
        category: category.new(name: "technology"),
        comments: [
          comment.new(author: "leslie", content: "great post!"),
          comment.new(author: "bob", content: "very informative.")
        ],
        tags: ["ruby", "software development", "tdd"]
      )

      blog_post.publish

      expect(blog_post.author.notifications.last).to eq("your post 'rspec and let' has been published.")
      expect(blog_post.editor.notifications.last).to eq("the post 'rspec and let' you edited has been published.")
    end
  end
end
```

Inline default leads to several happy impacts:

- If you ever need to move this spec, copy it as a starting point, etc, it's all intact as a single unit
- Sure you'll probably duplicate some of this for a second spec, but deep in a spec file you'll never need to scroll around to see what's going on
- If your setup code looks like many lines of boilerplate perhaps your class has way to many dependencies and needs reactoring

So if you haven't tried this recently I'd invite you to do an experiment for a week and write zero `let`s.
