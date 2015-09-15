#!/bin/sh
#ffmpeg -thread_queue_size 512 -f alsa -i hw:0,0  -thread_queue_size 512 -f video4linux2 -i /dev/video10 -c:v libx264 -preset fast -pix_fmt yuv420p -c:a aac -ab 320000 -ar 48000 -ac 2 -strict -2 -t $1 videos/VIDEO$(date +%Y-%m-%d-%H:%M).mkv
ffmpeg -thread_queue_size 512 -f alsa -i hw:0,0 -thread_queue_size 512 -f video4linux2 -i /dev/video10 -c:v mjpeg -b:v 16M -c:a aac -b:a 320000 -ar 48000 -ac 2 -strict -2 -t $1 videos/VIDEO$(date +%Y-%m-%d-%H:%M).mkv
exit 0