# Publishing

## On Rubygems.org

```
$ git tag -a vx.x.x
$ git push --follow-tags
$ gem push haiti-hash-x.x.x.gem
```

See https://guides.rubygems.org/publishing/.

On new release don't forget to rebuild the library documentation:

```
$ bundle exec yard doc
```

An to be sure all tests pass!

```
$ rake
```

## On BlackArch

BA process

On new release don't forget to rebuild the library documentation:

```
$ bundle exec yard doc
```

An to be sure all tests pass!

```
$ rake
```
