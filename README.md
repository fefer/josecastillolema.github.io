![GitHub language count](https://img.shields.io/github/languages/count/josecastillolema/josecastillolema.github.io)
![GitHub top language](https://img.shields.io/github/languages/top/josecastillolema/josecastillolema.github.io)
![gem](https://img.shields.io/badge/gem-3.1.2-blue)
![ruby](https://img.shields.io/badge/ruby-2.7-blue)
![jekyll](https://img.shields.io/badge/jekyll-3.8.7-blue)
![bundler](https://img.shields.io/badge/bundler-2.1.4-blue)


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
