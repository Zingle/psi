This repository contains tools and scripts for generating systemd portable
service images.

Installing Tools
================
If you want to install the **psic** *Portable Service Image Compiler* to develop
your own *psi* scripts, clone this repo and use the
[ziu tool](https://github.com/Zingle/zi):

```sh
mkdir psi
git clone git@github.com:Zingle/psi.git psi
ziu --local psi/ziu.comp
```

Building Included Images
========================
Use **GNU Make** to build the included images:

```sh
make
```

Building Your Own Images
========================
To build an image from a *.psi* file you have created, use the included **psci**
tool:

```sh
psic my-image.psi
```

Caching OS Images
=================
If `$PSI_CACHE` is set in the environment, and this directory is writable, OS
images downloaded using **debootstrap** will be cached here.  The cache
directory defaults to **/var/cache/psi** if not set in the environment.

```sh
mkdir deb-cache
export PSI_CACHE=$(pwd)/deb-cache
psic my-image.psi
```

Setting Mirror
==============
You can use an alternate mirror when downloading packages using **debootstrap**.
Set the `$PSI_MIRROR` environment variable to the desired mirror when building.

```sh
export PSI_MIRROR=http://mirror.enzu.com/ubuntu/
psic my-image.psi
```

Troubleshooting
===============
If running on PureOS, check the [PureOS notes](doc/pureos.md).
