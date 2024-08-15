#!/bin/bash 

BR_SCRIPT="brightness_control.sh"

BL_DEFAULT_DENTRY="/sys/class/backlight/intel_backlight"
BL_DENTRY="${BL_DENTRY:-${BL_DEFAULT_DENTRY}}"
BL_DEFAULT_INSTALL_PATH="${BL_INSTALL_PATH:-/usr/bin}"
[ "${BL_DEFAULT_DENTRY}" != "${BL_DENTRY}" ] &&
        sed -i "s|${BL_DEFAULT_DENTRY}|${BL_DENTRY}|" ${BR_SCRIPT}
echo "[+] Installing ${BR_SCRIPT} under ${BL_DEFAULT_INSTALL_PATH} ..."
cp -v ${BR_SCRIPT} ${BL_DEFAULT_INSTALL_PATH}
echo "[+] Done !"
