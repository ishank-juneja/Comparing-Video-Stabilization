import cv2
import argparse


if __name__ == '__main__':
    # Pass command line inputs for the stabilization procedure
    parser = argparse.ArgumentParser()
    # Add input file path, default type is string
    parser.add_argument("-i", action="store", dest="file")
    # Add output file path, default type is string
    parser.add_argument("-o", action="store", dest="file_out")
    # read cmd line arguments
    args_read = parser.parse_args()
    # in file path
    in_file_path = args_read.file
    # Create video capture object for current file
    cap = cv2.VideoCapture(in_file_path)
    fps = int(cap.get(cv2.CAP_PROP_FPS))
    w = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    h = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
    out_file_path = args_read.file_out
    print("Currently Processing File {0}\n".format(in_file_path))
    # Desired shape into which output is to be reshaped
    desired_shape = (512, 288)
    # Define the codec and create VideoWriter object
    fourcc = cv2.VideoWriter_fourcc(*'XVID')
    # output writer object
    out = cv2.VideoWriter(out_file_path, fourcc, fps, desired_shape)
    flag = False
    # While frame keep coming in
    while cap.isOpened():
        # Read input frame by frame
        ret, frame = cap.read()
        if ret:
            if w/h != desired_shape[0]/desired_shape[1]:
                # Big bot case, crop the sides of the frame
                # Shape = (w, h), np array = rows (height), cols (width)
                frame1 = frame[60:-60, :, :]
                if not flag:
                    print("A cropping was performed to HD ratio before reshaping to 512x288\n")
                    flag = True
            else:
                frame1 = frame
            out_frame = cv2.resize(frame1, desired_shape, interpolation=cv2.INTER_CUBIC)
            out.write(out_frame)
        else:
            break
    # Release everything if job is finished
    cap.release()
    out.release()
