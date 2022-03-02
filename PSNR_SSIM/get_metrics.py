# For L1, SubSpace, and Averaging stabilizations methods
from skimage.metrics import structural_similarity, peak_signal_noise_ratio
import cv2
import argparse
from visual_rythm_updated import get_rythm_score

# Pass command line inputs for 2the stabilization procedure
parser = argparse.ArgumentParser()
# Path to original raw unstable video
parser.add_argument("-unstable", action="store", dest="unstable")
# Path to ground truth stable videos (could be real ground truth or
# pretend ground truth when real not available as in Robots)
parser.add_argument("-stable", action="store", dest="stable")
# Path to stabilized video
parser.add_argument("-stabilized", action="store", dest="stabilized")
# read cmd line arguments
args_read = parser.parse_args()
# unstable video path
unstable_path = args_read.unstable
stable_ref_path = args_read.stable
stabilized_path = args_read.stabilized
# Get lists of file names
# Unstable and Stable vids have the same shape

# Get score based on Rhythm Score script and add to list
stable_rythm = get_rythm_score(stable_ref_path)
unstable_rythm = get_rythm_score(unstable_path)
stabilized_rythm = get_rythm_score(stabilized_path)

# Create cap object for all 3 versions of the video
cap_stable = cv2.VideoCapture(stable_ref_path)
cap_unstable = cv2.VideoCapture(unstable_path)
# stable, unstable, and stabilized have same shape always for these 3 stabilization methods
# - L1, SubSpace, and Averaging
cap_stabilized = cv2.VideoCapture(stabilized_path)

# print(int(cap_stable.get(cv2.CAP_PROP_FRAME_COUNT)))
# ret, frame = cap_stable.read()
# print(frame.shape)
# print(int(cap_unstable.get(cv2.CAP_PROP_FRAME_COUNT)))
# ret, frame = cap_unstable.read()
# print(frame.shape)
# print(int(cap_stabilized.get(cv2.CAP_PROP_FRAME_COUNT)))
# ret, frame = cap_stabilized.read()
# print(frame.shape)

# mean SSIM of stabilized frames wrt ground truth stable (true/fake) frame
cumm_ssim = 0
# mean PSNR of stabilized frames wrt ground truth stable (true/fake) frame
cumm_psnr = 0
# mean SSIM of stable frames wrt ground truth stable frame
cumm_ssim_2 = 0
# mean PSNR of stable frames wrt ground truth stable frame
cumm_psnr_2 = 0

# On number of frames:
# L1 method has an equal number of input and output frames
# Avg method has 2 fewer frames in the output than it has in the input, both taken to be end
# Subspace: Has 40 frames less than the input based on window size in implementation, the window of 40 is at the end
# All 3 cases above can be solved by running the comparison on min(frames)

# Number of frames vary across different video files due to various reasons
n_frames = min(int(cap_stable.get(cv2.CAP_PROP_FRAME_COUNT)), int(cap_unstable.get(cv2.CAP_PROP_FRAME_COUNT)),
               int(cap_stabilized.get(cv2.CAP_PROP_FRAME_COUNT)))

while True:
    # Read input frame by frame
    ret_stable, frame_stable = cap_stable.read()
    ret_unstable, frame_unstable = cap_unstable.read()
    ret_stabilized, frame_stabilized = cap_stabilized.read()
    # Continue looping through frames as long as all streams have new frames
    if ret_stable and ret_unstable and ret_stabilized:
        # Depends on the method chosen
        cumm_ssim += structural_similarity(frame_stable, frame_stabilized, multichannel=True)
        cumm_psnr += peak_signal_noise_ratio(frame_stable, frame_stabilized)
        # These 2 are roughly fixed across methods aside from n_frames varying
        cumm_ssim_2 += structural_similarity(frame_unstable, frame_stabilized, multichannel=True)
        cumm_psnr_2 += peak_signal_noise_ratio(frame_unstable, frame_stabilized)
    else:
        break
# Release everything if job is finished
cap_stable.release()
cap_unstable.release()
cap_stabilized.release()
print("{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}".format(stabilized_path, stable_rythm, unstable_rythm, stabilized_rythm,
                                                      cumm_ssim/n_frames, cumm_ssim_2/n_frames, cumm_psnr/n_frames,
                                                      cumm_psnr_2/n_frames))
