#!/bin/sh
cd /media/Docs/Pd_ch_20042504/FICH52BenjInstall/videothon_TV1000vaches/patch/
v4l2-ctl -d /dev/video1 -c focus_auto=0
v4l2-ctl -d /dev/video1 -c focus_absolute=3
pd-l2ork -noaudio videothon.pd
exit 0