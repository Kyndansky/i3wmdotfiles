#!/bin/bash
# Usa segnali più gentili per chiudere i processi precedenti
pkill xwinwrap
pkill mpv

sleep 1.5
export DISPLAY=:0

# Monitor 1
xwinwrap -g 1920x1080+1360+0 -b -sp -nf -ov -- sh -c 'mpv --wid=$1 --hwdec=auto --loop --no-audio --no-osc --no-osd-bar --vo=gpu --panscan=1.0 "/home/kynda/Videos/liveWallpapers/shadowSlaveLooped.mp4"' -- WID &

sleep 0.5

# Monitor 2
xwinwrap -g 1360x768+0+312 -b -sp -nf -ov -- sh -c 'mpv --wid=$1 --hwdec=auto --loop --no-audio --no-osc --no-osd-bar --vo=gpu --panscan=1.0 "/home/kynda/Videos/liveWallpapers/shadowSlaveLooped.mp4"' -- WID &