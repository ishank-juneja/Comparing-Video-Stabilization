#!/bin/bash
source activate /home/ishank/anaconda3/envs/PSNR_SSIM/
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

for video in in_paths = ../results-new/subSpace/big-bot-clipped-out/*_out.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	stable_ref_path="../results-new/averaging-filter/big-bot-clipped-out/$(basename "$video" _subSpace_out.avi)_avg_stab_r_5.avi"
	unstable_ref_path="../dataset/big-bot-clipped/$(basename "$video" _subSpace_out.avi).avi"
	# echo -e $"Currently running on $video\n $stable_ref_path\n $unstable_ref_path\n"
    python3 get_metrics.py -stable "$stable_ref_path" -unstable "$unstable_ref_path" -stabilized "$video"
done

echo "file_path", "stable_rythm", "unstable_rythm", "stabilized_rythm", "mean_ssim", "mean_ssim_2", "mean_psnr", "mean_psnr_2"

for video in in_paths = ../results-new/subSpace/big-bot-clipped-out/*_out.avi; do
	# Checks if a file like instance
	# actually exists or is just a glob
	[ -e "$video" ] || continue
	stable_ref_path="../results-new/averaging-filter/big-bot-clipped-out/$(basename "$video" _subSpace_out.avi)_avg_stab_r_25.avi"
	unstable_ref_path="../dataset/big-bot-clipped/$(basename "$video" _subSpace_out.avi).avi"
	# echo -e $"Currently running on $video\n $stable_ref_path\n $unstable_ref_path\n"
    python3 get_metrics.py -stable "$stable_ref_path" -unstable "$unstable_ref_path" -stabilized "$video"
done

source deactivate
