---
title: Configuring Jenkins Properties As Code
layout: post
categories:
  - software development
  - automated builds
---

Jenkins appears to be the single most popular CI/CD tool despite its age and corresponding legacy tradeoffs.
When I landed on the State of [California's Child Welfare project](https://cwds.ca.gov) Jenkins was already the default option.
I brushed up on the new features since I had largely missed out on the new pipeline features with an actual
code as configuration option that was added to Jenkins around 2016.

We moved to the state's infrastructure and Jenkins server by making heavy use of Jenkinsfiles and a few triggering
plugins like [Github Pull Request Builder](https://wiki.jenkins.io/display/JENKINS/GitHub+pull+request+builder+plugin)
and the [Generic Webhook Trigger](https://wiki.jenkins.io/display/JENKINS/Generic+Webhook+Trigger+Plugin).  Later in the project, I volunteered to lead the
pipeline team to 'Automate All the Things'. Eventually, we experimented with writing Jenkins Shared Libraries which is a
somewhat clunky way to share code between Jenkinsfiles without breaking down and writing whole Jenkins plugins.
After some early successes, we eventually moved to write a significant library of shared steps which were then used
on dozens of the organization's projects.

After a time it occurred to me that we could embed many of the settings in the projects that were a pain to set up in the GUI from
within a shared library custom step.  One of the most elaborate plugins to configure was Github PullRequestBuilder, but we were
eventually able to capture all of its settings in a fairly simple step.

{% highlight groovy %}
node('buildNode') {
  triggerProperties = githubPullRequestBuilderTriggerProperties()
  properties([
    pipelineTriggers([triggerProperties])
  ])
  ...
}
{% endhighlight %}

Under the covers it sets up an Frankenstien sort of object:

{% highlight groovy linenos %}
[$class: 'org.jenkinsci.plugins.ghprb.GhprbTrigger',
  spec: 'H/5 * * * *',
  configVersion: 3,
  allowMembersOfWhitelistedOrgsAsAdmin: true,
  orgslist: 'ca-cwds',
  cron: 'H/5 * * * *',
  onlyTriggerPhrase: false,
  useGitHubHooks: true,
  permitAll: false,
  autoCloseFailedPullRequests: false,
  displayBuildErrorsOnDownstreamBuilds: false,
  triggerPhrase: 'retest this please',
  skipBuildPhrase: '.*\\[skip\\W+ci\\].*',
  extensions: [
                [
                    $class: 'org.jenkinsci.plugins.ghprb.extensions.build.GhprbCancelBuildsOnUpdate',
                    overrideGlobal: false
                ],
                [
                    $class: 'org.jenkinsci.plugins.ghprb.extensions.status.GhprbSimpleStatus',
                    commitStatusContext: 'Pull Request Testing',
                    statusUrl: 'https://jenkins.example.com',
                    addTestResults: false,
                    completedStatus: [
                      [
                        $class: 'org.jenkinsci.plugins.ghprb.extensions.comments.GhprbBuildResultMessage',
                        message: 'Success',
                        result: 'SUCCESS'
                      ],
                      [
                        $class: 'org.jenkinsci.plugins.ghprb.extensions.comments.GhprbBuildResultMessage',
                        message: 'Build Failed',
                        result: 'FAILURE'
                      ],
                      [
                        $class: 'org.jenkinsci.plugins.ghprb.extensions.comments.GhprbBuildResultMessage',
                        message: 'Build Error',
                        result: 'ERROR'
                      ]
                    ]
                  ]
              ]
    ]
{% endhighlight %}

This saved significant time for any team trying to set up their first pull-request based build in their Jenkinsfile, as
they no longer had to figure out all of the boxes to check and text fields to fill out.  So if you're just getting started
trying to reuse code among Jenkinfiles don't forget the option of embedding complex config as well.


Notes:

We've pulled in three things now Jenkins Github plugin, GHPRB, Generic Webhook Trigger.
Had to deal with them as steps.
Eventual goal is to move all config out of Jenkins into code.
Unfortunate bootstrap issue especially with triggers, or a first time project.
Jenkins X is supposed to provide some of this functionality.
