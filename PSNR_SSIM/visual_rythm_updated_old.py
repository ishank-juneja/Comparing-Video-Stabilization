#AIM: EXTRACT THE VISUAL RYTHM
#REF: VISUAL RYTHMS FOR QUALITATIVE EALUATION OF VIDEO STABILIZATION
#DATE: 12th December

from matplotlib import pylab as plt
import numpy as np
import cv2
from skimage.feature.texture import greycomatrix,greycoprops
#extract the unstable video information
cap=cv2.VideoCapture("unstable.mp4");
width=int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
height=int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
length=int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
fps=int(cap.get(cv2.CAP_PROP_FPS))

print("UNSTABLE VIDEO DETAILS")
print("width of video= ",width)
print("height of the video=",height)
print("number of frames in the video=",length)
print("frame rate of video=",fps)

#let r denote the row and column to be considered to analyse visual rythm
r=int(height/2)
#variable to store horizontal rythm from strip and average pixel
h_r_strip_u=[]
h_rythm_u=[]
#variable to store vertical rythm from strip and average pixel
v_rythm_u=[]
v_r_strip_u=[]
for i in range(length//2):
    ret,frame=cap.read();
    if ret==False:
        break;
    frame=cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    h_rythm_u.append(frame.sum(axis=0)/height)
    v_rythm_u.append(frame.sum(axis=1)/width)
    h_r_strip_u.append(np.sum(frame[r-15:r+15],axis=0));
    v_r_strip_u.append(np.sum(frame[:,r-15:r+15],axis=1));

#convert the rythm of strips into images
h_r_strip_u=np.array(h_r_strip_u,'uint8')
h_r_strip_u=h_r_strip_u.T
v_r_strip_u=np.array(v_r_strip_u,'uint8')
v_r_strip_u=v_r_strip_u.T   

#convert the rythm into images
h_rythm_u=np.array(h_rythm_u,'uint8')
h_rythm_u=h_rythm_u.T
v_rythm_u=np.array(v_rythm_u,'uint8')
v_rythm_u=v_rythm_u.T

#apply sobel filters to rythm images
sobelx = cv2.Sobel(h_r_strip_u,cv2.CV_64F,1,0,ksize=5)
sobely = cv2.Sobel(h_r_strip_u,cv2.CV_64F,0,1,ksize=5)
#create dummy for storing magnitude and angle
mag_unstable=0*sobelx
ang_unstable=0*sobely
#convert the sobel filter into magnitude and angle
for i in range(sobelx.shape[0]):
	for j in range(sobelx.shape[1]):
		mag_unstable[i,j]=np.sqrt(sobelx[i,j]**2+sobely[i,j]**2)
		ang_unstable[i,j]=np.arctan(sobely[i,j]/sobelx[i,j])

#perform otsu thresholding to the magnitude
ret,thresh_mag= cv2.threshold(mag_unstable,127,255,cv2.THRESH_TOZERO)
for i in range(thresh_mag.shape[0]):
	for j in range(thresh_mag.shape[1]):
		if thresh_mag[i,j]<1:
			ang_unstable[i,j]=0;

print(thresh_mag)
print(ang_unstable)

#calculate greycomatrix
ang_unstable=np.abs(np.degrees(ang_unstable));
ang_unstable=np.array(ang_unstable,'uint8')
M=greycomatrix(ang_unstable, [20], [0, np.pi], levels=100,normed=True)
print(M.shape)
score=greycoprops(M,'homogeneity')
print(score)