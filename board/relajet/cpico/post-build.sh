#!/bin/sh
# post-build.sh for Pistachio SBC
# 2017, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"

# copy the uEnv.txt to the output/images directory
install -m 0644 -D ${BOARD_DIR}/uEnv.txt $BINARIES_DIR/uEnv.txt

# WiFi BCM43438A0
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/bcm43438a0.hcd ${TARGET_DIR}/lib/firmware/brcm/bcm43438a0.hcd
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm43438a0_p2p.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm43438a0_p2p.bin
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm43438a0_apsta.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm43438a0_apsta.bin
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm43438a0.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm43438a0.bin

# WiFi BCM4235C0
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/nvram_ap6212.txt ${TARGET_DIR}/lib/firmware/brcm/nvram_ap6212.txt
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/BCM4345C0.hcd ${TARGET_DIR}/lib/firmware/brcm/BCM4345C0.hcd
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm43455c0_ag.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm43455c0_ag.bin
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/nvram_ap6255.txt ${TARGET_DIR}/lib/firmware/brcm/nvram_ap6255.txt
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm43455c0_ag_apsta.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm43455c0_ag_apsta.bin

# WiFi BCM4339A0
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/bcm4339a0.hcd ${TARGET_DIR}/lib/firmware/brcm/bcm4339a0.hcd
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm4339a0_ag_apsta.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm4339a0_ag_apsta.bin
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/fw_bcm4339a0_ag.bin ${TARGET_DIR}/lib/firmware/brcm/fw_bcm4339a0_ag.bin
install -m 777 -D ${BOARD_DIR}/rootfs_overlay/lib/firmware/brcm/nvram_ap6335.txt ${TARGET_DIR}/lib/firmware/brcm/nvram_ap6335.txt
