---
title: More Testable Rake Tasks
layout: post
permalink: /2020/02/9/more-testable-rake-tasks/
categories:
  - software development
  - ruby
  - test driven development
---

A few months ago I had a brief pairing session where I attempted to help another
developer with getting some working tests around a rake task they had created.
They were having issues testing within rake and executing tasks which is a
common issue in rake testing.  My suggesion was to build the entire logic of the
task in a PORO to avoid the pain of testing rake plumbing.

The approach takes the following steps:

- Create a spec file to test the new class
- Create a class that handles doing the thing
- Create a spec file for the rake task
- Add the rake task and defer everything to the new class

For this example say you have some rake task that should just return the current
versions of ruby and bundler locally.  Not super useful, but it will involve executing
some local commands.  We want to be able to run:

{% highlight console %}
rake display_versions
{% endhighlight %}

And have it dump out:

{% highlight console %}
Gathering versions
Ruby VERSION: ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin19]
Bundler VERSION: Bundler version 2.1.4
{% endhighlight %}

Instead of diving in and just doing all the logic in rake and having to figure out
how to test it in that context, we start with the class that we want to build the
results, say `VersionDisplayer`, and we start with the spec:

{% highlight ruby linenos %}
require_relative 'version_displayer'

describe VersionDisplayer do
  describe '#display' do
    let(:version_displayer) { VersionDisplayer.new }
    let(:expected_output) do
      <<~OUTPUT
        Gathering versions
        Ruby VERSION: ruby 2.7.0
        Bundler VERSION: bundler 2.0
      OUTPUT
    end

    before do
      allow(Open3).to receive(:capture2)
        .with('ruby --version').and_return(['ruby 2.7.0', nil])
      allow(Open3).to receive(:capture2)
        .with('bundler --version').and_return(['bundler 2.0', nil])
    end

    it 'returns the current bundler and ruby version' do
      expect { version_displayer.display }.to output(expected_output).to_stdout
    end
  end
end
{% endhighlight %}

This leads us to the VersionDisplayer class that satisfies the spec:

{% highlight ruby linenos %}
require 'open3'

class VersionDisplayer
  def display
    puts "Gathering versions"
    ruby_version, _status = Open3.capture2('ruby --version')
    bundler_version, _status = Open3.capture2('bundler --version')
    puts "Ruby VERSION: #{ruby_version}"
    puts "Bundler VERSION: #{bundler_version}"
  end
end
{% endhighlight %}

Now we can write a simple rake integration spec:

{% highlight ruby linenos %}
require 'rake'

describe ':display_versions' do
  let(:version_displayer) { instance_double('VersionDisplayer') }

  before do
    load File.expand_path('Rakefile')
    allow(VersionDisplayer).to receive(:new).and_return(version_displayer)
    allow(version_displayer).to receive(:display).with(no_args)
  end

  it 'uses version displayer to output the version information' do 
    Rake::Task['display_versions'].invoke
    expect(version_displayer).to have_received(:display).with(no_args)
  end
end
{% endhighlight %}

And finally we a simple rake task that delegates all everything:

{% highlight ruby linenos %}
require_relative 'version_displayer'

desc 'Displays versions of bundler and ruby'
task :display_versions do
  VersionDisplayer.new.display
end
{% endhighlight %}

I much prefer this to embedding the logic in the rake task and writing
complex tests around the rake context.
