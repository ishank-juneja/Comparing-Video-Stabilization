import time
import cv2
import multiprocessing as mp


def control_expt(connection_obj, q_obj, expt_dur):
    def elapsed_time(start_time):
        return time.clock()-start_time

    # Wait for the signal from the parent process to begin grabbing frames
    while True:
        msg = connection_obj.recv()     
        if msg == 'Start!':
            break    

    # Initialize the video capture object
    cam = cv2.VideoCapture(0)

    # start the clock!!
    expt_start_time = time.clock() 

    while True:
        ret, frame = cam.read()          
        q_obj.put_nowait((elapsed_time(expt_start_time), frame))

        if elapsed_time(expt_start_time) >= expt_dur:
            q_obj.put_nowait((elapsed_time(expt_start_time), 'stop'))
            connection_obj.close()
            q_obj.close()
            cam.release()
            break


class test_class():
    # Intiialise a tets class
    def __init__(self, expt_dur):
        # Create a pipe for Inter-Process-Communication (IPC)
        self.parent_conn, self.child_conn = mp.Pipe()
        # Create Queue for IPC
        self.q = mp.Queue()
        # Create a child process to run the target function
        self.control_expt_process = mp.Process(target=control_expt, args=(self.child_conn, self.q, expt_dur))
        # Initiate new process
        self.control_expt_process.start()

    def frame_processor(self):
        self.parent_conn.send('Start!')
        prev_time_stamp = 0
        while True:
            time_stamp, frame = self.q.get()
            # print (time_stamp, stim_bool)
            fps = 1/(time_stamp-prev_time_stamp)
            prev_time_stamp = time_stamp
            # Do post processing of frame here but need to be careful that q.qsize doesn't end up growing too quickly...
            print(int(self.q.qsize()), fps)
            if frame == 'stop':
                print('destroy all frames!')
                cv2.destroyAllWindows()
                break               
            else:
                cv2.imshow('test', frame)        
                cv2.waitKey(30)
        self.control_expt_process.terminate()


if __name__ == '__main__':
    x = test_class(expt_dur=60)
    x.frame_processor()
