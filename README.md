W.A.Y. - Where are You? [![BuildStatus](https://secure.travis-ci.org/calebhc/way.png?branch=master)](http://travis-ci.org/calebhc/way)
=======================

Find partials in your Rails app easily! :D

Install
-------

```shell
gem install way
```
or add the following line to Gemfile:

```shell
gem 'way', :group => :development
```

and run `bundle install` from your shell.

Use
---

1. Add '_way' to the querystring

![add to querystring](https://s3.amazonaws.com/kittypizza/way-toolbar.png)

2. Hit enter and your partials will now display their full path

![preview](https://s3.amazonaws.com/kittypizza/way-preview.png)

Tests
-----

To run the entire test suite, just run `rake` from your shell.

Supported Rails versions
------------------------

Rails 2.3.x

Rails 3.x

Why?
---

Since I have to work on a LARGE Rails codebase everyday, finding where a
particular partial is can be a little annoying. When having to add or
edit some markup for a partial, spending a few minutes looking around gets
frustrating. This helps save a few extra seconds.

I know the output is a little crude but it still works. :)

License
-------

Copyright 2012 Caleb Cohoon

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
