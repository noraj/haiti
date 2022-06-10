# Installation

## Production

<!-- tabs:start -->

### **rubygems.org (universal)**

```
$ gem install haiti-hash
```

Gem: [haiti-hash](https://rubygems.org/gems/haiti-hash)

### **BlackArch**

From the repository:

```
# pacman -S haiti
```

From git:

```
# blackman -i haiti
```

PKGBUILD: [haiti](https://github.com/BlackArch/blackarch/blob/master/packages/haiti/PKGBUILD)

### **Pentoo**

From the repository:

```
# emerge app-crypt/haiti-hash
```

### **ArchLinux**

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

### **Docker (git)**

Without a registry

```
$ git clone https://github.com/noraj/haiti.git
$ cd haiti
$ docker-compose build
# alternatively without docker compose
$ docker build -f Dockerfile -t haiti:1.3.0 --build-arg HAITI_VERSION=1.3.0 .
```

Usage examples:

```
$ docker-compose run haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
# alternatively without docker compose
$ docker run -it --rm haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
```

### **Docker (Docker Hub)**

host: `docker.io`

```
# latest
$ docker pull noraj/haiti

# specific tag
$ docker pull noraj/haiti:1.3.0
```

Repository: [noraj/haiti](https://hub.docker.com/r/noraj/haiti).

### **Docker (GHCR)**

GHCR = Github Container Registry

host: `ghcr.io`

```
# latest
$ docker pull ghcr.io/noraj/haiti

# specific tag
$ docker pull ghcr.io/noraj/haiti:1.3.0
```

Repository: [noraj/haiti](https://github.com/noraj/haiti/pkgs/container/haiti)

### **Docker (ACR)**

ACR = Alibaba Cloud Container Registry

host: `registry-intl.eu-central-1.aliyuncs.com`

```
# latest
$ docker pull registry-intl.eu-central-1.aliyuncs.com/noraj/haiti

# specific tag
$ docker pull registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:1.3.0
```

Repository: [the overview page is not public](https://cr.console.aliyun.com/repository/eu-central-1/noraj/haiti/details)

### **Debian**

Download the `.deb` files from the last Github [release](https://github.com/noraj/haiti/releases)
attached in the _Assets_ section.

```
# install dependencies
$ apt install ruby-paint
$ dpkg -i ruby-docopt_0.6.1_all_debian11.deb

# install haiti
$ dpkg -i haiti_1.3.0_all_debian11.deb
```

This has been tested only on Debian 11 (bullseye).

Checksum with `b2sum` (Blake2 hash):

```
fefd3827a9058231dfa99c01c1e38ebf4f0dd81034e6876a506e64826d9835b5d1056cbaa6312415deb0a4f9d91c9969084873363fcee6cb3c08b92d3512915c  haiti_1.3.0_all_debian11.deb
f85e4bf6148fa69fe1b3258acfd4ab31cf303d1c03b4ce6b1f5ff16fde1d78dda6469eca0f5b44ffee6b0454961d5e865549d5d986bea4a4a31d9bfdc8e6f518  ruby-docopt_0.6.1_all_debian11.deb
```

### **openSUSE**

Work in progress

<!-- tabs:end -->

## Development

It's better to use [ASDM-VM](https://asdf-vm.com/) to have latests version of ruby and to avoid trashing your system ruby.

<!-- tabs:start -->

### **rubygems.org**

```
$ gem install --development haiti-hash
```

### **git**

Just replace `x.x.x` with the gem version you see after `gem build`.

```
$ git clone https://github.com/noraj/haiti.git haiti
$ cd haiti
$ gem install bundler
$ bundler install
$ gem build haiti.gemspec
$ gem install haiti-x.x.x.gem
```

Note: if an automatic install is needed you can get the version with `$ gem build haiti.gemspec | grep Version | cut -d' ' -f4`.

### **No install**

Run the library in irb without installing the gem.

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

### **.deb**

Build the `.deb` for Debian using `fpm` from the gem:

```
$ git clone https://github.com/noraj/haiti.git
$ gem install fpm
$ cd packages/debian/ruby-docopt
$ fpm -s gem docopt
$ cd ../haiti
$ fpm -s gem haiti-hash
```

Adapt `.fpm` file in each folder for each release.

<!-- tabs:end -->
