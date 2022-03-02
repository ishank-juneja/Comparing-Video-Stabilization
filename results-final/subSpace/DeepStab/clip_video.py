# Code to clip a video
import cv2 as cv
from moviepy.video.io.ffmpeg_tools import ffmpeg_extract_subclip
import argparse
from os.path import join


def onChange(trackbarValue):
    cap.set(cv.CAP_PROP_POS_FRAMES, trackbarValue)
    err, img = cap.read()
    cv.imshow("Clip Video", img)
    pass


original_path = './avi_rotated/*.avi'

# Pass command line inputs for the stabilization procedure
parser = argparse.ArgumentParser()
# Add input file path, default type is string
parser.add_argument("-i", action="store", dest="file_in")
# Add output file path, default type is string
parser.add_argument("-o", action="store", dest="file_out")
# read cmd line arguments
args_read = parser.parse_args()
# File path
file_path = args_read.file_in
out_path = args_read.file_out
# print(file_path)


# Extract input file name sans extension and vid type of either mp4 or avi
in_name = file_path.split('/')[-1].split('.')[0]
print("Currently Processing File {0}".format(file_path))
# Create video capture object for current file
cap = cv.VideoCapture(file_path)
# Count number of frames
n_frames = int(cap.get(cv.CAP_PROP_FRAME_COUNT))
# Get input fps, use same for output
fps = int(cap.get(cv.CAP_PROP_FPS))
dur = n_frames//fps
print("Number of frames is {0}, Video duration is {1}s".format(n_frames, dur))
cv.namedWindow("Clip Video")
cv.createTrackbar('start', "Clip Video", 0, n_frames, onChange)
cv.createTrackbar('end', "Clip Video", 100, n_frames, onChange)
onChange(0)
cv.waitKey()
start = cv.getTrackbarPos('start', "Clip Video")
end = cv.getTrackbarPos('end', "Clip Video")
if start >= end:
	raise Exception("Start must be less than end")
start_t = start/fps
end_t = end/fps
# Output location
out_path = join(out_path, in_name + "_clipped.avi")
ffmpeg_extract_subclip(file_path, start_t, end_t, targetname=out_path)
