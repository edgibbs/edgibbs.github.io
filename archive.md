---
title: Archive
author: Ed Gibbs
layout: page
---
<ul>
{% for post in site.posts %}
  <li>
    <a href="{{ post.url }}">
    {{ post.title }}
    </a>
    -- <time> {{ post.date | date: " %B %e, %Y" }}</time>
  </li>
{% endfor %}
</ul>
