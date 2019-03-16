---
title: Evaluating Concourse CI
layout: post
author: Ed Gibbs
permalink: /2019/01/13/concourse-ci-eval/
categories:
  - software development
  - automated builds
---

Over the holidays I had a chance to do a review of the CI options out there. I'm more than happy with something like Travis, and
I've often said Jenkins is the Wordpress of CI Servers even though I've used it now for the bulk of my career.  Currently, I'm working
on building out a full production pipeline for the State of California where we are attempting to be transparent and use AGPL 3.0 for all of
our code.  That pretty much eliminated Travis CI, Codeship, and Circle CI.  I realize they're free for open source projects in general, but
suffice it to say that getting a SASS solution, even a free one approved with some level of access to our Github organization is a tall order
with the existing policies in place.  So self-hosted open source was going to be our options.

So one of our options was [Concourse CI](https://concourse-ci.org), so I sat down with several hours to dive in and take a good look at it.

There is a lengthy [tutorial](https://concoursetutorial.com) put out by some developers from [Stark and Wayne](https://starkandwayne.com). The
tutorial gives you a good sense of how it would be to use Concourse CI. I did find a few stumbling blocks running through it:

### Fly Install
[Introduction](https://concoursetutorial.com)

There isn't a convenient brew install, so I had to go looking for this command to install instead. (You can download from the initial docker container,
but it downloaded a strange fly.dms file for me, and I found it easier to download and install directly.)

```bash
curl -Lo fly https://github.com/concourse/concourse/releases/download/v4.2.2/fly_darwin_amd64 && chmod +x fly && mv fly /usr/local/bin/
```
### Private Keys
[Publishing Outputs](https://concoursetutorial.com/basics/publishing-outputs/)

The tutorial step where you publish outputs involves putting private keys in your pipeline.yml file which feels terrible. I was able to swap
it out to use a personal access token on GitHub by switching the out the :uri under the git resource for username and password where password is
just the reference to the personal access token. I was surprised to see the use of private keys at all in the tutorial. I also made sure
to lock down the token to only be able to create gists since this tutorial step updates a particular gist.

_Original Config_
```yaml
- name: resource-gist
  type: git
  source:
    uri: git@gist.github.com:e028e491e42b9fb08447a3bafcf884e5.git
    branch: master
    private_key: |-
      -----BEGIN RSA PRIVATE KEY-----
      MIIEpQIBAAKCAQEAuvUl9YU...
      ...
      HBstYQubAQy4oAEHu8osRhH...
      -----END RSA PRIVATE KEY-----
```

_Config With Personal Access Token_
```yaml
- name: resource-gist
  type: git
  source:
    uri: https://gist.github.com/e028e491e42b9fb08447a3bafcf884e5.git
    branch: master
    username: edgibbs
    password: ddf78dffcaf4398bec2323
```

### CredHub
[Secrets With Credentials Manager](https://concoursetutorial.com/basics/secret-parameters/)

After the step of making sure I had an up to date VirtualBox and cloning Stark and Wayne's CLI `bucc`, it
failed right away. They have a note about needing `direnv`, but I had to do a bit more config with it:

```bash
echo 'eval "$(./bin/bucc env)"' > .envrc
brew install direnv
direnv allow
```

Despite these few missteps I was able to work my way through the tutorial and get an overall impression.

# Takeaways

## Overall Architecture

Under the covers Concourse relies on three main parts:

- A master server, the ATC or air traffic controller that is the heart of concourse
- The TSA which is an ssh server for registering workers with the ATC
- Postgres for storing persistent data

A pipeline in Concourse also has three main items:

- Resources are things like git, artifact creation, or Slack
- Resource types are custom resources that you can define or use other community contributed resources
- Jobs are where the work of the pipeline happens

In contrast with Jenkins, there is a UI with the TSA, but it is used only for reporting or potentially
kicking off jobs.  The main interface is the `fly` CLI. And everything essentially runs inside containers like
Docker.

## Impressions

Much of the workflow derives from the CLI, and pipelines are first class citizens. The ability to test
out a pipeline locally with `fly` is way ahead of setting up something like Jenkins especially if your organization
uses a lot of plugins. Another change is because Concourse is designed to have atomic jobs so you can actually retrigger
a pipeline from a particular stage.

The UI in Concourse is a minimalist dark mode style web interface. Jenkins still feels like it's straight out of 2002, so
it was nice to see a visual representation with boxes and lines versus the tables of Jenkins current pipeline representations.

One area that looks like it might be a pain with Concourse is its support for artifacts. Since each job is atomic, you have to
handle passing things between jobs by pushing it out and storing it with a resource. Then some late job can pick it up
and process it further.

The declarative style syntax of the pipelines appears to be fine, though I wouldn't have minded the option to escape out to a full
programming language.

Overall I thought it was an novel direction on CI servers and worth a deeper dive down the road.
