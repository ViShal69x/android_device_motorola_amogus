#!/vendor/bin/sh
# Script to load fingerprint module and start fingerprint HAL
# Written by electimon
fps_id=`cat /proc/config/fps_id/ascii`

if [[ $fps_id == "fpc" ]]; then
	insmod /vendor/lib/modules/fpc1020_mmi.ko
	start fps_hal
else
	insmod /vendor/lib/modules/ets_fps_mmi.ko
	start ets_hal
fi
