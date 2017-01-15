[![Build Status](https://travis-ci.org/RianaFerreira/rails5-articles.svg?branch=master)](https://travis-ci.org/RianaFerreira/rails5-articles)

# Rails5 Blog

This README would normally document whatever steps are necessary to get the
application up and running.

## Prerequisites
* Ruby 2.3.3
* Rails 5.0.1
* Postgresql >= 9.4
*

## Setup
```shell
$ git clone git@github.com:RianaFerreira/rails5-articles.git
$ cd rails5-articles
$ bin/setup
```

## System Dependencies
* [Bugsnag](https://app.bugsnag.com/private-22/rails/errors?openModal=project-access) exception dashboard

## Analysis Tools
* [brakeman](https://github.com/presidentbeef/brakeman) find security vulnerabilities
```shell
$ brakeman
```
* [rubocop](https://github.com/bbatsov/rubocop)
```shell
$ rubocop --format html -o rubocop/rubocop_output.html
$ open rubocop/rubocop_output.html
```
* [rubycritic](https://github.com/whitesmith/rubycritic)
```shell
$ rubycritic
```
* [traceroute](https://github.com/amatsuda/traceroute)
```shell
$ rake traceroute >> traceroute-0.5.0/traceroute_report.txt
$ open traceroute-0.5.0/traceroute_report.txt
```

## Testing
Rspec has been used to generate test coverage for the code base.
```shell
$ rspec
```
*Bullet* and *SimpleCov* reports are compiled while the test suite is running.
* [Bullet](https://github.com/flyerhzm/bullet) identifies all N+1 queries and unused eager loaded associations
```shell
$ open log/bullet.log
```
* [SimpleCov](https://github.com/colszowka/simplecov) identifies the code coverage value and highlights areas that need tests
```shell
$ open coverage/index.html
```

## Configuration
* Bugsnag account API key configuration


* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
