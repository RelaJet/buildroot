#!/bin/sh
# post-build.sh for Pistachio SBC
# 2017, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"

install -m 777 -D ${BOARD_DIR}/rootfs_overlay/etc/inittab ${TARGET_DIR}/etc/inittab
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/usr/bin/system_init ${TARGET_DIR}/usr/bin/system_init
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/usr/lib/libatomic.so.1 ${TARGET_DIR}/usr/lib/libatomic.so.1
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/usr/lib/libatomic.so.1.0.0 ${TARGET_DIR}/usr/lib/libatomic.so.1.0.0
