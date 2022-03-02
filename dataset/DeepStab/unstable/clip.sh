#!/bin/bash
for video in ./avi_rotated/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	python3 clip_video.py -i "$video" -o "avi_rotated_clipped"
done