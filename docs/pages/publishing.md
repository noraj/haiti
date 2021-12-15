# Publishing

Be sure all tests pass!

```
$ bundle exec rake test
```

Also check the linter:

```
$ bundle exec rubocop
```

Count the number of hash type supported:

```
$ bundle exec rake count
```

Update the number in the following files:

- `README.md`
- `docs/_coverpage.md`
- `docs/README.md`
- `docs/why.md`

On new release don't forget to rebuild the library documentation:

```
$ bundle exec yard doc
```

Create an annotated git tag:

```
$ git tag -a vx.x.x
```

Push the changes including the tags:

```
$ git push --follow-tags
```

Build the gem:

```
$ gem build haiti.gemspec
# or
$ bundle exec rake build
```

Push the new gem release on RubyGems See https://guides.rubygems.org/publishing/.

```
$ gem push haiti-hash-x.x.x.gem
```
