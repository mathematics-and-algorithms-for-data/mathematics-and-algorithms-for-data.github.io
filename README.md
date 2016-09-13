# Jekyll Bootstrap 4 + Browserify Boilerplate

Starter boilerplate project for Jekyll with Bootstrap 4 and Browserify.

## Features

- [Jekyll](https://jekyllrb.com/)
- [Bootstrap 4](http://v4-alpha.getbootstrap.com/)
- [Browserify](http://browserify.org/)
- [jQuery](https://jquery.com/)

## Live Demo

https://ssokurenko.github.io/jekyll-bootstrap4-boilerplate/

## Installation
Install Jekyll:

```
gem install jekyll bundler
```

Install bundle dependencies:

```
bundle install
```

Jekyll server (`CTRL+C` to stop)

```
jekyll serve
```

By default the site will be available at http://127.0.0.1:4000/jekyll-bootstrap4-boilerplate/

But if you want to have it at the root like http://127.0.0.1:4000, set the `baseurl` at [_config.yml](config.yml) to an empty string:
```
baseurl: "" # the subpath of your site, e.g. /blog
```

## Buid assets
To build front-end assets: stylesheets and javascript, run:
```
npm run build
```

To run full build (assets and newly generated HTML with Jekyll:
```
npm run build:full
```

To check changes at source .scss and .js files and automatically re-generated files, use the watch script:

```
npm run watch
```

Welcome to explore the scripts section at the [package.json](package.json) file to find out what is included to the scripts.
