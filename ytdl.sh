#!/bin/sh

#download playlist audio files and prefix the name of each track with a number so they appear in the correct order
youtube-dl -f bestaudio -o "$2%(playlist_index)s-%(title)s.%(ext)s" $1

#replace any spaces in the track names with underscores  
rename 's/ /_/g' $2/*
