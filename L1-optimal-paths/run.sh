#!/bin/bash
for video in in_paths = ../dataset/big-bot/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/big-bot/*.mp4; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/big-bot-out/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/big-bot-clipped/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/big-bot-clipped-out/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/big-bot-clipped-out/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/big-bot-clipped-out/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/big-bot-clipped-out/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/DeepStab/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/DeepStab/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/DeepStab/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/DeepStab/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/DeepStab/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/Crowd/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/Crowd/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/Crowd/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/Crowd/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/Crowd/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/Parallax/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/Parallax/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/Parallax/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/Parallax/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/Parallax/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/QuickRotation/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/QuickRotation/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/QuickRotation/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/QuickRotation/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/QuickRotation/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/Regular/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/Regular/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/Regular/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/Regular/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/Regular/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/Running/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/Running/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/Running/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/Running/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/Running/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

for video in in_paths = ../dataset/Zooming/unstable/*.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	# echo $out_name
	# Slow step so check if output file already exists
	out_name="../results-new/L1/Zooming/$(basename "$video" .avi)_L1_cr_0.5.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.5
	fi
	out_name="../results-new/L1/Zooming/$(basename "$video" .avi)_L1_cr_0.6.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.6
	fi
	out_name="../results-new/L1/Zooming/$(basename "$video" .avi)_L1_cr_0.7.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.7
    fi
  out_name="../results-new/L1/Zooming/$(basename "$video" .avi)_L1_cr_0.8.avi"
	if [ -f "$out_name" ]; then
		echo -e $"Results for video $video exist, ... skipping run\n"
	else
	echo -e $"Currently running on $video\n"
  python3 L1optimal.py -i "$video" -o "$out_name" -crop-ratio 0.8
	fi
done

