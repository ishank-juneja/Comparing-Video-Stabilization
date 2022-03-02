#!/bin/bash
# Begin loop on mini-dataset
for video in in_paths = ../mini-dataset/*.avi; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../results/DeepLearning/mini-new/$(basename "$video" .avi)_DL_stab_out.avi"
	echo -e $"Currently running on $video\n"
	python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
done
