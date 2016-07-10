# Space Bear

Spiritual successor to my company's e-commerce platform named blue-harvest.

## Setup

This project is configured to use the [neo4jrb](http://neo4jrb.io/) `rake` tasks. Allow it to start
up your *neo4j* server for easy-of-use, or use your existing *neo4j* server with the settings in `config/neo4j.yml`.

* Run `bundle install`
* Run `bundle exec rake neo4j:install[community-latest]`
* Run `bundle exec rake neo4j:start`
* Run `bundle exec db:seed`
* Finally, run `./bin/rails server`

It's important **not to use ./bin/rake**! If you do, *spring* attempts to start and will crash, because the database is not started. Use `bundle exec rake` instead...

## Features

When the *rails* server is running, two routes are available to browse.

* Categories: [http://localhost:3000/categories](http://localhost:3000/categories)
* Products: [http://localhost:3000/products](http://localhost:3000/products)

These JSONAPI end-points are produced with [JSONAPI::Resources](https://github.com/cerebris/jsonapi-resources).

## Teardown

Stop your *rails* server with `ctrl+c`.

Stop your *neo4j* server with `bundle exec rake neo4j:stop`. It's not necessary
to run `bundle exec db:seed` before you start the *rails* server again; the data
persists.

Stop *spring* with `./bin/spring stop`. Otherwise, things will continue to run
in the background.

## License

MIT License

Copyright (c) 2016 Steve Jabour

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
