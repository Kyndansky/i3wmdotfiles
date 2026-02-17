#!/bin/bash
# Cerca l'ID dello stream di Spotify
ID=$(pactl list sink-inputs | awk '/Sink Input #/ {id=substr($3, 2)} /application.name = "spotify"/ {print id}')

# Se l'ID esiste, cambia il volume
if [ -n "$ID" ]; then
    pactl set-sink-input-volume "$ID" "$1"
fi