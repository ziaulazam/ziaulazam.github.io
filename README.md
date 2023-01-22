<div align="center">

  [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
  [![Build Status](https://travis-ci.com/ziaulazam/ziaulazam.github.io.svg?branch=master)](https://travis-ci.com/ziaulazam/ziaulazam.github.io)
  [![Repo Type: Resume](https://img.shields.io/badge/repo%20type-resume-lightgrey.svg)](#resume)
  [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)
  [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ziaulazam/ziaulazam.github.io/blob/master/LICENSE)

</div>

---

<h1 align="center">Resume</h1>

<div align="center">
  <a href="https://ziaulazam.github.io/">
    <img src="resume.svg" alt="Resume" width="400">
  </a>
  <br/>
  <div>
    Icon from
    <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
  </div>
  <h3>
    <a href="https://ziaulazam.github.io/">See the Web Page</a>
  </h3>
</div>

## Usage

You can can edit the yml files and replace the demo content with your own. Hopefully it will be fairly simple to work out where all the content goes, but here is a quick overview.

##### _config.yml
This will contain all the of the main configuration for your resume such as your name, email, social media links and about me content. It will also allow you to change the titles of some of the content sections.
A full example of the _config.yml can be found [here](https://github.com/sproogen/modern-resume-theme/blob/master/_config.yml)

##### Dark Mode
Dark mode is configured via _config.yml
```
darkmode: true (options: true, false, never)
```
When dark mode is `true` the site will show the dark theme for everyone
When dark mode is `false` the site will not show the dark theme, but it will still respect the users device preferences
When dark mode is `never` the site will never be shown in the dark theme

##### _data/education.yml
A list of all your education, each education will follow this format
```
- layout: left (options: left, right, top, top-right, top-middle)
  name: Institution name
  dates: Date Range (eg. 2016 - 2019)
  qualification: Qualifications (eg. BA Performing Arts)
  quote: >
    Short institution or course description (optional)
  description: | # this will include new lines to allow paragraphs
    Description of qualification
```

##### _data/experience.yml
A list of all your experience, each experience will follow this format
```
- layout: left (options: left, right, top, top-right, top-middle)
  company: Company name
  link: Link to company (eg. https://google.com)(optional)
  job_title: Job title
  dates: Date Range (eg. November 2016 - present)
  quote: >
   Short description of the company (optional)
  description: | # this will include new lines to allow paragraphs
    Description of role
```

If you wish to specify multiple job titles for a single company, use this format
```
- layout: left (options: left, right, top, top-right, top-middle)
  company: Company name
  link: Link to company (optional)
  jobs:
    - title: Job title 1
      dates: Date Range (eg. November 2016 - present)
    - title: Job title 2
      dates: Date Range (eg. January 2015 - November 2016)
  quote: >
   Short description of the company (optional)
  description: | # this will include new lines to allow paragraphs
    Description of role
```

##### _data/projects.yml
A list of all your projects, each project will follow this format
```
- layout: left (options: left, right, top, top-right, top-middle)
  name: Project name
  link: Link to project (optional)
  github: Github page for project (optional)
  quote: >
    Short overview of the project (optional)
  description: | # this will include new lines to allow paragraphs
    Description about the work on/with the project
```

##### assets/main.scss
Add any css changes or additions you want to make here after the line `@import 'resume-theme';`

## Running locally

Before you start make sure you have *Ruby* and the gems for *Jekyll* and *Bundler* installed locally.
You can do that by running: `gem install jekyll bundler`

1. Clone your resume repository locally *(if you haven't already)*
2. `cd [your-repository-name]`
3. `bundle install`
4. `bundle exec jekyll serve`
5. Open your browser to `http://localhost:4000`

Any changes you make will automatically build and you will be able to see these by refreshing your browser.

*Note: You will need to re-run `bundle exec jekyll serve` to see changes made in `_config.yml`.*

## Updating bundles on GitHub Workspaces
sudo nano /etc/apt/sources.list
add this line to file: deb http://security.ubuntu.com/ubuntu bionic-security main
sudo apt update && apt-cache policy libssl1.0-dev
sudo apt-get install libssl1.0-dev

rvm install "ruby-2.3"
rvm list
gem install bundler:2.3.15
bundle update
