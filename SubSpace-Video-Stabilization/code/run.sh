#!/bin/bash
#for video in in_paths = ../../dataset/big-bot/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/big-bot-out/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/big-bot-out/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/big-bot/*.mp4; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/big-bot-out/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/big-bot-out/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/big-bot-clipped/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/big-bot-clipped-out/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/big-bot-clipped-out/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/DeepStab/unstable/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/DeepStab/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/DeepStab/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/Crowd/unstable/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/Crowd/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/Crowd/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/Parallax/unstable/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/Parallax/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/Parallax/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/QuickRotation/unstable/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/QuickRotation/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/QuickRotation/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/Regular/unstable/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/Regular/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/Regular/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done
#
#for video in in_paths = ../../dataset/Running/unstable/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../../results-new/subSpace/Running/$(basename "$video" .avi)_subSpace_out.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name"
#	fi
#	out_name="../../results-new/subSpace/Running/$(basename "$video" .avi)_subSpace_crop.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 subSpace.py -i "$video" -o "$out_name" --crop
#	fi
#done

for video in in_paths = ../../dataset/Zooming/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../../results-new/subSpace/Zooming/$(basename "$video" .avi)_subSpace_out.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 subSpace.py -i "$video" -o "$out_name"
	fi
	out_name="../../results-new/subSpace/Zooming/$(basename "$video" .avi)_subSpace_crop.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 subSpace.py -i "$video" -o "$out_name" --crop
	fi
done
