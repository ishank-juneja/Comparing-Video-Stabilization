#!/bin/bash
# Print and define Column Headers for output text file
# In sequence the columns are, path to the stabilized video being assesed,
# the rhythm score for the real/pretend ground truth stable,
# the rhythm score for the input unstable video,
# the rhythm score for the output stabilized video,
# Mean SSIM across frames of the video under reference scheme 1 (output wrt stable video true/fake)
# Mean SSIM across frames of the video under reference scheme 2 (output wrt raw unstable input)
# Mean PSNR across frames of the video under reference scheme 1 (output wrt stable video true/fake)
# Mean PSNR across frames of the video under reference scheme 2 (output wrt raw unstable input)

echo "file_path", "stable_rythm", "unstable_rythm", "stabilized_rythm", "mean_ssim", "mean_ssim_2", "mean_psnr", "mean_psnr_2"

# Run metrics on results by DL method with truly stable videos as reference
for video in in_paths = ../results-new/averaging-filter/DeepStab/*_25.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	stable_ref_path="../dataset/DeepStab/stable/$(basename "$video" _avg_stab_r_25.avi).avi"
	unstable_ref_path="../dataset/DeepStab/unstable/$(basename "$video" _avg_stab_r_25.avi).avi"
	# echo -e $"Currently running on $video\n $stable_ref_path\n $unstable_ref_path\n"
    python3 get_metrics.py -stable "$stable_ref_path" -unstable "$unstable_ref_path" -stabilized "$video"
done

# Run metrics on results by DL method with averaging method with r = 5 as reference
echo "file_path", "stable_rythm", "unstable_rythm", "stabilized_rythm", "mean_ssim", "mean_ssim_2", "mean_psnr", "mean_psnr_2"
for video in in_paths = ../results-new/averaging-filter/DeepStab/*_25.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	stable_ref_path="../results-new/averaging-filter/DeepStab/$(basename "$video" _avg_stab_r_25.avi)_avg_stab_r_5.avi"
	unstable_ref_path="../dataset/DeepStab/unstable/$(basename "$video" _avg_stab_r_25.avi).avi"
	# echo -e $"Currently running on $video\n $stable_ref_path\n $unstable_ref_path\n"
    python3 get_metrics.py -stable "$stable_ref_path" -unstable "$unstable_ref_path" -stabilized "$video"
done

## Run metrics on results by DL method with averaging method with r = 25 as reference
#echo "file_path", "stable_rythm", "unstable_rythm", "stabilized_rythm", "mean_ssim", "mean_ssim_2", "mean_psnr", "mean_psnr_2"
#for video in in_paths = ../results-new/averaging-filter/DeepStab/*_25.avi; do
#	# Checks if a file like instance
#	# actually exists or is just a glob
#	[ -e "$video" ] || continue
#	stable_ref_path="../results-new/averaging-filter/DeepStab/$(basename "$video" _avg_stab_r_25.avi)_avg_stab_r_25.avi"
#	unstable_ref_path="../dataset/DeepStab/unstable/$(basename "$video" _avg_stab_r_25.avi).avi"
#	# echo -e $"Currently running on $video\n $stable_ref_path\n $unstable_ref_path\n"
#    python3 get_metrics.py -stable "$stable_ref_path" -unstable "$unstable_ref_path" -stabilized "$video"
#done
