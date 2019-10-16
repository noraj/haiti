# Documentation 

## CLI doc

See [Usage](pages/usage.md?id=cli).

## Server locally

```
$ npm i docsify-cli -g
$ docsify serve docs
```

## Library doc

The output directory of the library documentation will be `docs/yard`.

You can consult it online [here](https://orange-cyberdefense.github.io/haiti/yard/).

### Building locally: for library users

For developers who only want to use the HAITI library.

```
$ bundle exec yard doc
```

### Building locally: for HAITI developer

For developers who want to participate to HAITI development.

```
$ bundle exec yard doc --yardopts .yardopts-dev
```
