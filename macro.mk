currdir=$(shell pwd)
builddir=$(currdir)/build
###############################################
#             Buildroot Macros                #
###############################################
rootfs=$(builddir)/rootfs
buildrootbuild=$(builddir)/buildroot_build
buildrootconfig=freescale_imx8mmevk_defconfig
buildrootgiturl=git://git.busybox.net/buildroot
buildrootgitbranch=master
buildrootsrc=$(builddir)/buildroot_src
