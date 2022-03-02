#!/bin/bash
cd deep-online-video-stabilization-deploy
source activate /home/ishank/anaconda3/envs/deep-online-video-stabilization-deploy
# Begin loop on mini-dataset
for video in in_paths = ../mini-dataset/*.avi; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../results/DeepLearning/mini/$(basename "$video" .avi)_DL_stab_out.avi"
	echo -e $"Currently running on $video\n"
	/usr/bin/time --verbose python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
done
source deactivate

cd ../Averaging-Stabilization
source activate /home/ishank/anaconda3/envs/Averaging-Stabilization
# Begin loop on mini-dataset
for video in in_paths = ../mini-dataset/*.avi; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../results/averaging-filter/mini/$(basename "$video" .avi)_avg_stab_out.avi"
	echo -e $"Currently running on $video\n"
	/usr/bin/time --verbose python3 stabilization_avg.py -i "$video" -o "$out_name"
done
source deactivate

cd ../L1-optimal-paths
source activate /home/ishank/anaconda3/envs/L1-optimal-paths
# Begin loop on mini-dataset
for video in in_paths = ../mini-dataset/*.avi; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../results/L1/mini/$(basename "$video" .avi)_L1_out.avi"
	echo -e $"Currently running on $video\n"
	/usr/bin/time --verbose python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
done
source deactivate

cd ../subSpace-Stabilization/code
source activate /home/ishank/anaconda3/envs/subSpace-Stabilization
# Begin loop on mini-dataset
for video in in_paths = ../../mini-dataset/*.avi; do
	# Checks if a file like instance actually exists or is just a glob
	[ -e "$video" ] || continue
	# Assemble out_file name
	out_name="../../results/subSpace/mini/$(basename "$video" .avi)_subSpace_out.avi"
	echo -e $"Currently running on $video\n"
	/usr/bin/time --verbose python3 subSpace.py -i "$video" -o "$out_name"
done
source deactivate

