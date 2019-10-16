# Installation

## Production

### Install from rubygems.org

```
$ gem install haiti-hash
```

Gem: [haiti-hash](https://rubygems.org/gems/haiti-hash)

### Install from BlackArch

From the repository:

```
# pacman -S haiti
```

From git:

```
# blackman -i haiti
```

PKGBUILD: [haiti](https://github.com/BlackArch/blackarch/blob/master/packages/haiti/PKGBUILD)

### Install from ArchLinux

Manually:

```
$ git clone https://aur.archlinux.org/haiti.git
$ cd haiti
$ makepkg -sic
```

With an AUR helper ([Pacman wrappers](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers)), eg. pikaur:

```
$ pikaur -S haiti
```

AUR: [haiti](https://aur.archlinux.org/packages/haiti/)

## Development

It's better to use [rbenv](https://github.com/rbenv/rbenv) to have latests version of ruby and to avoid trashing your system ruby.

### Install from rubygems.org

```
$ gem install --development haiti-hash
```

### Build from git

Just replace `x.x.x` with the gem version you see after `gem build`.

```
$ git clone https://github.com/Orange-Cyberdefense/haiti.git haiti
$ cd haiti
$ gem install bundler
$ bundler install
$ gem build haiti.gemspec
$ gem install haiti-x.x.x.gem
```

Note: if an automatic install is needed you can get the version with `$ gem build haiti.gemspec | grep Version | cut -d' ' -f4`.

### Run the library in irb without installing the gem

From local file:

```
$ irb -Ilib -rhaiti
```

From the installed gem:

```
$ haiti_console
```

Same for the CLI tool:

```
$ ruby -Ilib -rhaiti bin/haiti
```
