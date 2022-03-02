import numpy as np
import cv2 as cv
import argparse
import matplotlib.pyplot as plt


fourcc_avi = cv.VideoWriter_fourcc(*'XVID')
# fourcc_mp4 = cv.VideoWriter_fourcc(*'mp4v')

# # Pass command line inputs for the stabilization procedure
parser = argparse.ArgumentParser()
# Add input file path, default type is string
parser.add_argument("-i", action="store", dest="file")
# Add output folder path, default type is string
parser.add_argument("-o", action="store", dest="file_out")
# Read in a filter radius
parser.add_argument("--radius", action="store", dest="radius", type=int)
# read cmd line arguments
args_read = parser.parse_args()

# Set output FPS rate
# OUT_FPS = 20.0
# Filter size/radius
filter_radius = args_read.radius


# This needs to be replaced by the matrix multiplication
# P_t = C_t B_t in the general case
def movingAverage(curve, radius):
    window_size = 2 * radius + 1
    # Define the filter
    f = np.ones(window_size)/window_size
    # Add padding to the boundaries
    curve_pad = np.lib.pad(curve, (radius, radius), 'edge')
    # Apply convolution
    curve_smoothed = np.convolve(curve_pad, f, mode='same')
    # Remove padding
    curve_smoothed = curve_smoothed[radius:-radius]
    # return smoothed curve
    return curve_smoothed


def smooth(traj):
    smoothed_traj = np.copy(traj)
    # Filter the x, y and angle curves
    for ctr in range(3):
        smoothed_traj[:, ctr] = movingAverage(trajectory[:, ctr], radius=filter_radius)
    return smoothed_traj


def fixBorder(in_frame):
    s = in_frame.shape
    # Scale the image 4% without moving the center
    T = cv.getRotationMatrix2D((s[1]/2, s[0]/2), 0, 1.04)
    out_frame = cv.warpAffine(in_frame, T, (s[1], s[0]))
    return out_frame


# In file path
in_file = args_read.file
# Out file path
out_path = args_read.file_out

# Extract input file name sans extension and vid type of either mp4 or avi
[in_name, vid_type] = in_file.split('/')[-1].split('.')
# Read input video
cap = cv.VideoCapture(in_file)
n_frames = int(cap.get(cv.CAP_PROP_FRAME_COUNT))
# Get width and height of video stream
w = int(cap.get(cv.CAP_PROP_FRAME_WIDTH))
h = int(cap.get(cv.CAP_PROP_FRAME_HEIGHT))
# print("Currently Processing folder {0}, file {1}, type {2}".format(in_path, in_name, vid_type))
# fourcc = cv.VideoWriter_fourcc(*'MPEG')
# Get input fps, use same for output
fps = int(cap.get(cv.CAP_PROP_FPS))
# out = cv.VideoWriter('video_out.avi', fourcc, fps, (2*w, h))
# out = cv.VideoWriter(out_name, fourcc, fps, (2*w, h))
out = cv.VideoWriter(out_path, fourcc_avi, fps, (w, h))
# Read first frame
_, prev = cap.read()
# Convert frame to grayscale
prev_gray = cv.cvtColor(prev, cv.COLOR_BGR2GRAY)
# Pre-define transformation-store array
# Uses 3 parameters since it is purely a coordinate transform
transforms = np.zeros((n_frames - 1, 3), np.float32)
for i in range(n_frames - 2):
    # Detect feature points in previous frame
    prev_pts = cv.goodFeaturesToTrack(prev_gray, maxCorners=200, qualityLevel=0.01,
                                      minDistance=30, blockSize=3)
    # Read next frame
    success, curr = cap.read()
    if not success:
        break

    # Convert to grayscale
    curr_gray = cv.cvtColor(curr, cv.COLOR_BGR2GRAY)

    # Calculate optical flow (i.e. track feature points)
    curr_pts, status, err = cv.calcOpticalFlowPyrLK(prev_gray, curr_gray, prev_pts, None)

    # Sanity check
    assert prev_pts.shape == curr_pts.shape

    # Filter only valid points
    idx = np.where(status == 1)[0]
    prev_pts = prev_pts[idx]
    curr_pts = curr_pts[idx]

    # Find transformation matrix
    # This transform function is deprecated
    # use cv::estimateAffine2D, cv::estimateAffinePartial2D
    m, _ = cv.estimateAffine2D(prev_pts, curr_pts)  # will only work with OpenCV-3 or less

    # Extract translation
    dx = m[0, 2]
    dy = m[1, 2]

    # Extract rotation angle
    da = np.arctan2(m[1, 0], m[0, 0])

    # Store transformation
    transforms[i] = [dx, dy, da]

    # Move to next frame
    prev_gray = curr_gray
####
# Trajectory calculation, integrates changes to give current value of
# x, y, theta
#print(transforms.shape)
trajectory = np.cumsum(transforms, axis=0)
#print(trajectory.shape)
# print(trajectory)
smoothed_trajectory = smooth(trajectory)

# Calculate difference in smoothed_trajectory and trajectory
difference = smoothed_trajectory - trajectory

# Calculate newer transformation array
transforms_smooth = transforms + difference

# Reset stream to first frame
cap.set(cv.CAP_PROP_POS_FRAMES, 0)

# Write n_frames-1 transformed frames
for i in range(n_frames - 2):
    # Read next frame
    success, frame = cap.read()
    if not success:
        break

    # Extract transformations from the new transformation array
    dx = transforms_smooth[i, 0]
    dy = transforms_smooth[i, 1]
    da = transforms_smooth[i, 2]

    # Reconstruct transformation matrix accordingly to new values
    m = np.zeros((2, 3), np.float32)
    m[0, 0] = np.cos(da)
    m[0, 1] = -np.sin(da)
    m[1, 0] = np.sin(da)
    m[1, 1] = np.cos(da)
    m[0, 2] = dx
    m[1, 2] = dy

    # Apply affine wrapping to the given frame
    frame_stabilized = cv.warpAffine(frame, m, (w, h))
    # Fix border artifacts
    frame_stabilized = fixBorder(frame_stabilized)
    # Write the frame to the file
    # frame_out = cv.hconcat([frame, frame_stabilized])
    # If the image is too big, resize it.
    # if frame_out.shape[1] > 1920:
    #frame_out = cv.resize(frame_out, (frame_out.shape[1], frame_out.shape[0]))
    #cv.imshow("Before and After", frame_out)
    #cv.waitKey(10)
    out.write(frame_stabilized)
