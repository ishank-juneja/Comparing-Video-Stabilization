#!/bin/bash
for video in in_paths = ../dataset/big-bot/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/big-bot-out/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/big-bot-out/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/big-bot/*.mp4; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/big-bot-out/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/big-bot-out/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

#for video in in_paths = ../dataset/big-bot-db/*.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	# echo $out_name
#	# Slow step so check if output file already exists
#	out_name="../results-new/averaging-filter/big-bot-out-db/$(basename "$video" .avi)_avg_stab_r_25.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
#	fi
#	out_name="../results-new/averaging-filter/big-bot-out-db/$(basename "$video" .avi)_avg_stab_r_5.avi"
#	if [ -f "$out_name" ]; then
#		echo -e $"Results for video $video exist, ... skipping run\n"
#	else
#	echo -e $"Currently running on $video\n"
#  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
#	fi
#done

for video in in_paths = ../dataset/big-bot-clipped/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/big-bot-clipped-out/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/big-bot-clipped-out/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/DeepStab/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/DeepStab/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/DeepStab/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/Crowd/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/Crowd/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/Crowd/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/Parallax/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/Parallax/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/Parallax/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/QuickRotation/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/QuickRotation/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/QuickRotation/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/Regular/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/Regular/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/Regular/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/Running/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/Running/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/Running/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done

for video in in_paths = ../dataset/Zooming/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/averaging-filter/Zooming/$(basename "$video" .avi)_avg_stab_r_25.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 25
	fi
	out_name="../results-new/averaging-filter/Zooming/$(basename "$video" .avi)_avg_stab_r_5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 stabilization_avg.py -i "$video" -o "$out_name" --radius 5
	fi
done
