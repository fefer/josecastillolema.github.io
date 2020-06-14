[![Gem version](https://img.shields.io/gem/v/bootstrap.svg)](https://rubygems.org/gems/bootstrap)
[![Build Status](https://github.com/twbs/bootstrap/workflows/JS%20Tests/badge.svg?branch=master)](https://github.com/twbs/bootstrap/actions?query=workflow%3AJS+Tests+branch%3Amaster)

Sources of the GitOps project's website (https://https://josecastillolema.github.io/).

It is built with [Jekyll](http://jekyllrb.com/) as a static site.
The `master` branch contains only the generated files, ie what is in the `_site`.

To update the website, proceed like this:

* Make changes in the `source` branch.
* Build the site with Jekyll and test it locally.
* Commit your changes.
* Run `make publish`

This is the commands that are run when you type `make publish`:

```
git branch -D master
git checkout -b master
git filter-branch --subdirectory-filter _site/ -f
git checkout source
git push --all origin
```

The idea behind this process is from [@randymorris](https://github.com/randymorris)
(see [this](https://github.com/randymorris/randymorris.github.com/blob/source/README.md)).
