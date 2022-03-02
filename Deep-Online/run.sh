#!/bin/bash
for video in in_paths = ../dataset/big-bot/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/big-bot-out/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/big-bot/*.mp4; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/big-bot-out/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/big-bot-clipped/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/big-bot-clipped-out/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/DeepStab/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/DeepStab/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/Crowd/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/Crowd/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/Parallax/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/Parallax/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/QuickRotation/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/QuickRotation/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/Regular/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/Regular/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/Running/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/Running/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done

for video in in_paths = ../dataset/Zooming/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/DeepLearning/Zooming/$(basename "$video" .avi)_DL_stab_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 -u deploy_no_stable.py -i "$video" -o "$out_name" --model-dir ./models/v2_93/ --model-name model-90000 --gpu_memory_fraction 0.9
	fi
done
