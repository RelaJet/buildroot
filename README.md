# Relajet Buildroot SDK
## Environment Setup

General Packages

    $ sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
      build-essential chrpath  socat bc liblz4-tool \
      libsdl1.2-dev xterm  sed cvs subversion coreutils texi2html \
      docbook-utils python-pysqlite2 help2man make gcc g++ desktop-file-utils \
      libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc

For Ubuntu 12.04 host setup only:

    $ sudo apt-get install uboot-mkimage

For Ubuntu 14.04 or later revision host setup:

    $ sudo apt-get install u-boot-tools

## To get the SDK you need to have repo installed and use it as:

Download the SDK source:

    $ git clone https://github.com/RelaJet/buildroot.git
    $ cd buildroot
    $ git checkout relajet_201802_1.0.0_ga-wip

## Starting compile the source code and flashing the image:

To generate the configuration (ex: C Series)

    $ make relajet_c8328_defconfig
    $ make -j<N> (N is up to cors number on your host PC)

To generate the configuration (ex: PICO Series)

    $ make relajet_cpico_defconfig
    $ make -j<N> (N is up to cors number on your host PC)

To configure the application by your project

    $ make menuconfig

Output image files for PICO Series:

    SPL
    u-boot.img
    zImage
    uEnv.txt
    imx7d-pico_pi.dtb
    sdcard.img

Output Path: <buildroot path>/output/images/

flashcard the card (ex: PICO Series):

    $ sudo dd if=sdcard.img of=/dev/sdx bs=1M
    NOTE: sdx is your device node
