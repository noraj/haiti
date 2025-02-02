# Installation

## Production

<!-- tabs:start -->

### **rubygems.org (universal)**

```bash
gem install haiti-hash
```

Gem: [haiti-hash](https://rubygems.org/gems/haiti-hash)

### **BlackArch**

From the repository:

```bash
pacman -S haiti
```

From git:

```bash
blackman -i haiti
```

PKGBUILD: [haiti](https://github.com/BlackArch/blackarch/blob/master/packages/haiti/PKGBUILD)

### **Pentoo**

From the repository:

```bash
emerge app-crypt/haiti-hash
```

### **ArchLinux**

Manually:

```bash
git clone https://aur.archlinux.org/haiti.git
cd haiti
makepkg -sic
```

With an AUR helper ([Pacman wrappers](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers)), eg. pikaur:

```bash
yay -S haiti
```

AUR: [haiti](https://aur.archlinux.org/packages/haiti/)

From [quary](https://github.com/anatol/quarry) user repository for pre-built binaries:

`pacman.conf` or `mirrorlist`

```ini
[quarry]
Server = https://pkgbuild.com/~anatolik/quarry/x86_64/
```

Install from quary:

```bash
pacman -S ruby-haiti-hash
```

### **Docker (git)**

Without a registry

```bash
git clone https://github.com/noraj/haiti.git
cd haiti
docker-compose build
# alternatively without docker compose
docker build -f Dockerfile -t haiti:3.0.0 --build-arg HAITI_VERSION=3.0.0 .
```

Usage examples:

```bash
docker-compose run --rm haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
# alternatively without docker compose
docker run -it --rm haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
```

### **Docker (Docker Hub)**

host: `docker.io`

```bash
# latest
docker pull noraj/haiti

# specific tag
docker pull noraj/haiti:3.0.0
```

Usage examples:

```bash
docker run -it --rm noraj/haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
```

Repository: [noraj/haiti](https://hub.docker.com/r/noraj/haiti).

### **Docker (GHCR)**

GHCR = Github Container Registry

host: `ghcr.io`

```bash
# latest
docker pull ghcr.io/noraj/haiti

# specific tag
docker pull ghcr.io/noraj/haiti:3.0.0
```

Usage examples:

```bash
docker run -it --rm ghcr.io/noraj/haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
```

Repository: [noraj/haiti](https://github.com/noraj/haiti/pkgs/container/haiti)

### **Docker (ACR)**

ACR = Alibaba Cloud Container Registry

host: `registry-intl.eu-central-1.aliyuncs.com`

```bash
# latest
docker pull registry-intl.eu-central-1.aliyuncs.com/noraj/haiti

# specific tag
docker pull registry-intl.eu-central-1.aliyuncs.com/noraj/haiti:3.0.0
```

Usage examples:

```bash
docker run -it --rm registry-intl.eu-central-1.aliyuncs.com/noraj/haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
```

Repository: [the overview page is not public](https://cr.console.aliyun.com/repository/eu-central-1/noraj/haiti/details)

### **Docker (Quay)**

host: `quay.io`

```bash
# latest
docker pull quay.io/noraj/haiti

# specific tag
docker pull quay.io/noraj/haiti:3.0.0
```

Usage examples:

```bash
docker run -it --rm quay.io/noraj/haiti haiti -e d41d8cd98f00b204e9800998ecf8427e
```

Repository: [noraj/haiti](https://quay.io/repository/noraj/haiti?tab=info)

### **Debian**

Download the `.deb` files from the last Github [release](https://github.com/noraj/haiti/releases)
attached in the _Assets_ section.

```bash
# install dependencies
apt install ruby-paint
dpkg -i ruby-docopt_0.6.1_all_debian11.deb

# install haiti
dpkg -i haiti_1.5.0_all_debian11.deb
```

This has been tested only on Debian 11 (bullseye).

Checksum with `b2sum` (Blake2 hash):

```
fefd3827a9058231dfa99c01c1e38ebf4f0dd81034e6876a506e64826d9835b5d1056cbaa6312415deb0a4f9d91c9969084873363fcee6cb3c08b92d3512915c  haiti_1.5.0_all_debian11.deb
f85e4bf6148fa69fe1b3258acfd4ab31cf303d1c03b4ce6b1f5ff16fde1d78dda6469eca0f5b44ffee6b0454961d5e865549d5d986bea4a4a31d9bfdc8e6f518  ruby-docopt_0.6.1_all_debian11.deb
```

### **Void Linux**

`xbps-src` templates are provided in `packages/void` for haiti and its dependencies.

Example copy the templates to void-packages:

```bash
git clone --depth 1 https://github.com/void-linux/void-packages
git clone --depth 1 https://github.com/noraj/haiti.git
cp -r haiti/packages/void/* void-packages/srcpkgs
```

Install `xtools` and `base-devel`:

```bash
sudo xbps-install base-devel xtools
```

Build and install:

```bash
cd void-packages
./xbps-src pkg ruby-docopt
./xbps-src pkg ruby-paint
./xbps-src pkg haiti
xi haiti
```

If you want haiti to be included in the official Void repository ask [here](https://github.com/void-linux/void-packages/pull/37804).

### **openSUSE**

Work in progress

### **Exegol**

haiti is available as an [Exegol](https://exegol.readthedocs.io/en/latest/exegol-image/tools.html) image (nightly AMD64).

```bash
exegol install haiti
```

### **Homebrew**

```bash
brew install haiti
```

Formula: [haiti](https://formulae.brew.sh/formula/haiti)

<!-- tabs:end -->

## Development

It's better to use [ASDM-VM](https://asdf-vm.com/) to have latests version of ruby and to avoid trashing your system ruby.

<!-- tabs:start -->

### **rubygems.org**

```bash
gem install --development haiti-hash
```

### **git**

Just replace `x.x.x` with the gem version you see after `gem build`.

```bash
git clone https://github.com/noraj/haiti.git haiti
cd haiti
gem install bundler
bundler install
gem build haiti.gemspec
gem install haiti-x.x.x.gem
```

Note: if an automatic install is needed you can get the version with `$ gem build haiti.gemspec | grep Version | cut -d' ' -f4`.

### **No install**

Run the library in irb without installing the gem.

From local file:

```bash
irb -Ilib -rhaiti
```

From the installed gem:

```bash
haiti_console
```

Same for the CLI tool:

```bash
ruby -Ilib -rhaiti bin/haiti
```

### **.deb**

Build the `.deb` for Debian using `fpm` from the gem:

```bash
git clone https://github.com/noraj/haiti.git
gem install fpm
cd haiti/packages/debian/ruby-docopt
fpm -s gem docopt
cd ../haiti
fpm -s gem haiti-hash
```

Adapt `.fpm` file in each folder for each release.

### **Void Linux**

```bash
git clone https://github.com/noraj/haiti.git
cd haiti/packages/void/haiti
```

See [Void Linux packaging tips](https://gist.github.com/noraj/ba10acf45695cf00b4378254ebce5444) to know how to verify checksum, lint, build, etc.

<!-- tabs:end -->
