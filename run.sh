#!/bin/bash
conda init bash

echo -e $"Currently running on Deep Learning method \n- - - - - - - - - - - - \n\n"
cd Deep-Online-Video-Stabilization
source activate /home/ishank/anaconda3/envs/deep-online-video-stabilization-deploy
./run.sh
source deactivate
cd ../

echo -e $"Currently running on Averaging-Stabilization method \n- - - - - - - - - - - - \n\n"
cd Averaging-Stabilization
source activate /home/ishank/anaconda3/envs/Averaging-Stabilization
./run.sh
source deactivate
cd ../

echo -e $"Currently running L1-optimal paths \n- - - - - - - - - - - - \n\n"
cd L1-optimal-paths
source activate /home/ishank/anaconda3/envs/L1-optimal-paths
./run.sh
source deactivate
cd ../

echo -e $"Currently running subSpace method \n- - - - - - - - - - - - \n\n"
cd SubSpace-Video-Stabilization/code
source activate /home/ishank/anaconda3/envs/subSpace-Stabilization
./run.sh
source deactivate
cd ../
