---
id: 228
title: Array Length Error in Programming Ruby 2nd Edition Page 49
date: 2006-01-01T21:46:52+00:00
author: Ed Gibbs
layout: post
guid: http://edgibbs.com/?p=228
permalink: /2006/01/01/array-length-error-in-programming-ruby-2nd-edition-page-49/
categories:
  - ruby
  - software development
  - test driven development
---
Came across a minor oversight in a Ruby example on pg 49 of [Programming Ruby](http://pragmaticprogrammer.com/titles/ruby/index.html). The test code checks that you can find a song in a list which is just wrapped into an array of song objects. It worked find until I used a negative test case to search for a song title that shouldn&#8217;t be in the list.

<pre>def testFindBySongTitle
    assert_equal(@song1, @song_list.with_title("Love Song"))
    assert_nil(@song_list.with_title("love song"))
  end
</pre>

I got the familiar red bar and an error

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          Exception: undefined method 'name' for nil:NilClass
        </div>
      </td>
    </tr>
  </table>
</div>

. So I stared at the code for a bit looking for something funky:

<pre>class SongList
  def with_title(title)
    for i in 0..@songs.length
      return @songs[i] if title == @songs[i].name
    end
    return nil 
  end
end
</pre>

As it turned out I noticed it was actually iterating over the length of the array and since Ruby arrays are zero based indexes, I really needed to add the familiar

<div class="codecolorer-container text vibrant overflow-off" style="overflow:auto;white-space:nowrap;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="line-numbers">
        <div>
          1<br />
        </div>
      </td>
      
      <td>
        <div class="text codecolorer">
          length -1
        </div>
      </td>
    </tr>
  </table>
</div>

.

<pre>class SongList
  def with_title(title)
    for i in 0..@songs.length <b>- 1</b>
      return @songs[i] if title == @songs[i].name
    end
    return nil 
  end
end
</pre>

So once again a negative test case came in handy. I went ahead and submitted it as [possible errata](http://books.pragprog.com/titles/ruby/errata).