# Publishing

Edit the new version number in:

- `lib/haiti/version.rb`
- `man/haiti.ronn`
- `docker-compose.yml`
- `docs/pages/install.md`
- `docs/pages/publishing.md`
- search for others

Be sure all **tests** pass!

```
$ bundle exec rake test
```

Also check the **linter**:

```
$ bundle exec rubocop
```

**Count** the number of hash type supported:

```
$ bundle exec rake count
```

Update the number in the following files:

- `README.md`
- `docs/_coverpage.md`
- `docs/README.md`
- `docs/why.md`

On new release don't forget to rebuild the **library documentation**:

```
$ bundle exec yard doc
```

Update the man page in `man/haiti.ronn` and build it:

```
$ bundle exec rake create_manpage
```

Create an **annotated git tag**:

```
$ git tag -a v2.0.0
```

Push the changes including the tags:

```
$ git push --follow-tags
```

Build the **gem**:

```
$ gem build haiti.gemspec
# or
$ bundle exec rake build
```

Push the new gem release on **RubyGems** See https://guides.rubygems.org/publishing/.

```
$ gem push haiti-hash-2.0.0.gem
```

## Docker container registries

<!-- tabs:start -->

### **Docker Hub**

```
$ export HAITI_VERSION=2.0.0
$ docker build -f Dockerfile -t noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
$ docker build -f Dockerfile -t noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

$ docker login docker.io

$ pass show docker-credential-helpers/aHR0cHM6Ly9pbmRleC5kb2NrZXIuaW8vdjEv/USERNAME
$ docker push docker.io/noraj/haiti:$HAITI_VERSION
$ docker push docker.io/noraj/haiti:latest
```

### **Github (GHCR)**

GHCR = Github Container Registry

```
$ export HAITI_VERSION=2.0.0
$ docker build -f Dockerfile -t ghcr.io/noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
$ docker build -f Dockerfile -t ghcr.io/noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

$ export CR_PAT=YOUR_TOKEN
$ echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

$ pass show docker-credential-helpers/Z2hjci5pbw==/USERNAME
$ docker push ghcr.io/noraj/haiti:$HAITI_VERSION
$ docker push ghcr.io/noraj/haiti:latest
```

### **Alibaba Cloud (ACR)**

ACR = Alibaba Cloud Container Registry

```
$ export HAITI_VERSION=2.0.0
$ docker build -f Dockerfile -t registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
$ docker build -f Dockerfile -t registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

$ docker login registry-intl.eu-central-1.aliyuncs.com

$ pass show docker-credential-helpers/cmVnaXN0cnktaW50bC5ldS1jZW50cmFsLTEuYWxpeXVuY3MuY29t/USERNAME
$ docker push registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:$HAITI_VERSION
$ docker push registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:latest
```

### **Quay.io**

```
$ export HAITI_VERSION=2.0.0
$ docker build -f Dockerfile -t quay.io/noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
$ docker build -f Dockerfile -t quay.io/noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

$ docker login quay.io

$ pass show docker-credential-helpers/cXVheS5pbw==/USERNAME
$ docker push quay.io/noraj/haiti:$HAITI_VERSION
$ docker push quay.io/noraj/haiti:latest
```

<!-- tabs:end -->
