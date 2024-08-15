#!/bin/bash 

BL_TEST_DENRTY="/sys/class/backlight/intel_backlight"
BL_DENTRY="${BL_BASE_DIR:-$BL_TEST_DENRTY}"
#BL_DENTRY="${BL_BASE_DIR}/intel_backlight"
BR_INST_PATH="${BL_INST_PATH:-/usr/bin/}"

BR_SCRIPT="brightness_control.sh"
#echo $BL_DENTRY
sed -i "s|${BL_TEST_DENRTY}|${BL_DENTRY}|" $BR_SCRIPT 

echo "Installing ${BR_INST_PATH} ..."
cp -v $BR_SCRIPT $BR_INST_PATH

echo "done !"
