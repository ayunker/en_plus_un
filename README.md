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

## Benchmarks

### 100 Authors, 10 Posts per Author, 5 Tags per Post

UNOPTIMIZED
time curl --silent -o /dev/null localhost:3002/authors/unoptimized

real    0m1.007s
user    0m0.004s
sys     0m0.006s

PARTIALLY OPTIMIZED
time curl --silent -o /dev/null localhost:3002/authors/partially_optimized

real    0m0.678s
user    0m0.002s
sys     0m0.003s

OPTIMIZED
time curl --silent -o /dev/null localhost:3002/authors/optimized

real    0m0.126s
user    0m0.002s
sys     0m0.003s

