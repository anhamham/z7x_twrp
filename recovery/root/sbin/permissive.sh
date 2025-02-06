#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
mkdir -p /dev/block/platform/mstar_mci.0/by-name1
busybox mount -o bind /dev/block/platform/mstar_mci.0/by-name/system  /dev/block/platform/mstar_mci.0/by-name1
busybox mount -o bind /dev/block/platform/mstar_mci.0/by-name/recovery    /dev/block/platform/mstar_mci.0/by-name1/recovery