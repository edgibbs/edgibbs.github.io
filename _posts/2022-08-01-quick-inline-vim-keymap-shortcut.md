---
title: Quick Inline Vim Keymap Shortcut
layout: post
permalink: /2022/08/01/quick-inline-vim-keymap-shortcut/
categories:
  - software development
  - vim
---

I often forget the exact syntax for writing a quick shortcut in in vim/neovim. After hunting for several minutes
this morning I made a decision to memorialize the approach. Usually it's for a simple command like running tests in
an Elixir mix console:

{% highlight vim %}
:nnoremap ,e :!mix test<CR>
{% endhighlight %}

So the first `n` means it applies just to normal mode. The `noremap` means it won't follow any other mapping so it's
non-recursive. The `,e` is the what the shortcut is mapped to. And finally the `:!mix test<CR>` puts the mix command
into the terminal and hits a carriage return to execute the command.
