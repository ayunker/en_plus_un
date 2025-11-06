# README

This is a repo to demonstrate the impacts N+1s can have on Rails apps. It was
built to support this blog post: [].

## Setup

* `bundle install`
* `bundle exec rails db:setup`

## Usage

The `justfile` automates the usage:

* `just reset_data` purges any existing data and then runs the `generate_data`
rake task.
* `just benchmark` curls each endpoint and prints the execution time for each
(don't forget to start the server!)

You can adjust `generate_data.rake` to create whatever size datasets you want
to benchmark all the things.
