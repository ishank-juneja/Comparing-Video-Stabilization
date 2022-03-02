#!/bin/bash
# for video in in_paths = ./big-bot/*.avi; do
# 	Checks if a file like instance actually exists or is just a glob
# 	[ -e "$video" ] || continue
# 	Assemble out_file name
# 	out_name="../dataset-512x288/big-bot/$(basename "$video" .avi).avi"
# 	python3 reshape512x288.py -i "$video" -o "$out_name"
# done
# 
# for video in in_paths = ./*/*/*.avi; do
# 	Checks if a file like instance actually exists or is just a glob
# 	[ -e "$video" ] || continue
# 	Assemble out_file name
# 	out_name="../dataset-512x288/$video"
# 	python3 reshape512x288.py -i "$video" -o "$out_name"
# done

for video in in_paths = ./big-bot/*.avi; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../dataset-512x288/big-bot/$(basename "$video" .avi).avi"
	python3 reshape512x288.py -i "$video" -o "$out_name"
done

for video in in_paths = ./big-bot/*.mp4; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../dataset-512x288/big-bot/$(basename "$video" .avi).avi"
	python3 reshape512x288.py -i "$video" -o "$out_name"
done
