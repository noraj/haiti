# Publishing

Edit the new version number in:

- `lib/haiti/version.rb`
- `man/haiti.adoc` (and other man pages)
- `docker-compose.yml`
- `docs/pages/install.md`
- `docs/pages/publishing.md`
- search for others

Be sure all **tests** pass!

```bash
bundle exec rake test
```

Also check the **linter**:

```bash
bundle exec rubocop
```

**Count** the number of hash type supported:

```bash
bundle exec rake count
```

Update the number in the following files:

- `README.md`
- `docs/_coverpage.md`
- `docs/README.md`
- `docs/why.md`

On new release don't forget to rebuild the **library documentation**:

```bash
bundle exec yard doc
```

Update the man page in `man/haiti.ronn` and build it:

```bash
bundle exec rake man
```

Create an **annotated git tag**:

```bash
git tag -a v4.0.0
```

Push the changes including the tags:

```bash
git push --follow-tags
```

Build the **gem**:

```bash
gem build haiti.gemspec
# or
bundle exec rake build
```

Push the new gem release on **RubyGems** See https://guides.rubygems.org/publishing/.

```bash
gem push haiti-hash-4.0.0.gem
```

## Docker container registries

<!-- tabs:start -->

### **Docker Hub**

```bash
export HAITI_VERSION=4.0.0
docker build -f Dockerfile -t noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
docker build -f Dockerfile -t noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

docker login docker.io

pass show docker-credential-helpers/aHR0cHM6Ly9pbmRleC5kb2NrZXIuaW8vdjEv/USERNAME
docker push docker.io/noraj/haiti:$HAITI_VERSION
docker push docker.io/noraj/haiti:latest
```

### **Github (GHCR)**

GHCR = Github Container Registry

```bash
export HAITI_VERSION=4.0.0
docker build -f Dockerfile -t ghcr.io/noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
docker build -f Dockerfile -t ghcr.io/noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

pass show docker-credential-helpers/Z2hjci5pbw==/USERNAME
docker push ghcr.io/noraj/haiti:$HAITI_VERSION
docker push ghcr.io/noraj/haiti:latest
```

### **Alibaba Cloud (ACR)**

ACR = Alibaba Cloud Container Registry

```bash
export HAITI_VERSION=4.0.0
docker build -f Dockerfile -t registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
docker build -f Dockerfile -t registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

docker login registry-intl.eu-central-1.aliyuncs.com

pass show docker-credential-helpers/cmVnaXN0cnktaW50bC5ldS1jZW50cmFsLTEuYWxpeXVuY3MuY29t/USERNAME
docker push registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:$HAITI_VERSION
docker push registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:latest
```

### **Quay.io**

```bash
export HAITI_VERSION=4.0.0
docker build -f Dockerfile -t quay.io/noraj/haiti:$HAITI_VERSION --build-arg HAITI_VERSION=$HAITI_VERSION .
docker build -f Dockerfile -t quay.io/noraj/haiti:latest --build-arg HAITI_VERSION=$HAITI_VERSION .

docker login quay.io

pass show docker-credential-helpers/cXVheS5pbw==/USERNAME
docker push quay.io/noraj/haiti:$HAITI_VERSION
docker push quay.io/noraj/haiti:latest
```

<!-- tabs:end -->

## Distribution packaging

### Example

Globally, you can take example on the easy to understand [PKGBUILD](https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=haiti) for ArchLinux.

### Runtime dependencies

The dependencies required for runtime are the one listed the `:runtime` group in `Gemfile`. You can skip all other dependencies since they are useful only for development.

Those are Ruby dependencies (gems) available on [RubyGems](https://rubygems.org/) registry.

The system package equivalent of the Ruby gem is often name (depending on the distribution) `ruby-<gemname>`, e.g. `ruby-paint` for the `paint` gem.

`paint` gem is [often available as system package](https://repology.org/project/ruby:paint/versions) while `docopt` gem is [rarely](https://repology.org/project/ruby:docopt/versions). So you'll probably have to package this dependency too. Hopefully, `docopt` gem is pure ruby and has no dependency so is very [easy to package](https://github.com/BlackArch/blackarch/blob/master/packages/ruby-docopt/PKGBUILD).

### Optional dependencies

The runtime dependencies will be enough to use haiti library, `haiti` and `haiti-parsable` CLI programs.

To use `haiti-fzf`, `john-haiti` and `hashcat-haiti` CLI programs, the system package [fzf](https://repology.org/project/fzf/versions) will be required.

To use `john-haiti` CLI program, the system package [john](https://repology.org/project/john/versions) will be required.

To use `hashcat-haiti` CLI program, the system package [hashcat](https://repology.org/project/hashcat/versions) will be required.

### Man pages

Man pages for all CLI programs are either available on the `man/` folder if you clone the git repository or shipped in the `man/` folder is you only fetch gem.

Depending on the distribution, deploying the man pages will be as easy as copying them to `/usr/share/man/man1/<pkgname>.1` and letting the package manager post-install hook update the man database.

### Distribution packages

You can check existing packages for various distributions in the `packages/` folder of the git repository (packages source or link pointing to them) or on [repology](https://repology.org/project/haiti/versions), and some install guidelines on the [install page](https://noraj.github.io/haiti/#/pages/install).
