![example workflow](https://github.com/edgibbs/edgibbs.github.io/actions/workflows/jekyll.yml/badge.svg)

My current Jekyll based blog. ( PHP Machine -> Wordpress -> Jekyll)

### Start a new post:

```
  ruby new-post.rb "My Post Title"
```

Creates `_posts/YYYY-MM-DD-my-post-title.md` with the front matter already
filled in — title, permalink, layout, and a default category. The slug is
derived from the title, so the filename and permalink always agree. Refuses to
overwrite a post that already exists.

### Move a post to today's date:

```
  ruby new-post.rb --redate _posts/2026-07-20-my-post-title.md
```

For a post started one day and finished another. Renames the file and rewrites
the permalink together, so the two dates can't drift apart. Refuses if a post
already sits at today's date, or if the filename slug and the permalink slug
disagree — that means one of them is wrong, and only a human knows which.

### Display categories used:

```
  ruby list-categories.rb
```

### Run the specs:

```
  bundle exec rspec
```
