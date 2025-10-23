#!/bin/bash
conda create --name contact_graspnet_env python=3.8
conda activate contact_graspnet_env
conda install -c conda-forge cudatoolkit=11.2
conda install -c conda-forge cudnn=8.2
# If you don't have cuda installed at /usr/local/cuda then you can install on your conda env and run these two lines
conda install -c conda-forge cudatoolkit-dev
export CUDA_HOME=/path/to/anaconda/envs/contact_graspnet_env/bin/nvcc
pip install tensorflow==2.5 tensorflow-gpu==2.5
pip install opencv-python-headless
pip install pyyaml
pip install pyrender
pip install tqdm
pip install mayavi
pip install open3d==0.10.0
pip install typing-extensions==3.7.4
pip install trimesh==3.8.12
pip install configobj==5.0.6
pip install matplotlib==3.3.2
pip install pyside2==5.11.0
pip install scikit-image==0.19.0
pip install numpy==1.19.2
pip install scipy==1.9.1
pip install vtk==9.3.1
# if you have cuda installed at /usr/local/cuda run this line
sh compile_pointnet_tfops.sh
# if you have cuda installed on your conda env run this line
sh conda_compile_pointnet_tfops.sh