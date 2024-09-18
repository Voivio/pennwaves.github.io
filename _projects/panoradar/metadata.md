---
name: panoradar
title: Enabling Visual Recognition at Radio Frequency
date: 2024-05-29
project_page: /projects/panoradar/  # use the folder's name
teaser: path/to/teaser/image.jpg
visible: true
topic: robotic-perception
description: |
    This paper introduces PanoRadar, a novel RF imaging system that brings RF resolution close to that of LiDAR, while providing resilience against conditions challenging for optical signals. Our LiDAR-comparable 3D imaging results enable, for the first time, a variety of visual recognition tasks at radio frequency, including surface normal estimation, semantic segmentation, and object detection.
    
    PanoRadar utilizes a rotating single-chip mmWave radar, along with a combination of novel signal processing and machine learning algorithms, to create high-resolution 3D images of the surroundings. Our system accurately estimates robot motion, allowing for coherent imaging through a dense grid of synthetic antennas. It also exploits the high azimuth resolution to enhance elevation resolution using learning-based methods. Furthermore, PanoRadar tackles 3D learning via 2D convolutions and addresses challenges due to the unique characteristics of RF signals.
    
    Our results demonstrate PanoRadar's robust performance across 12 buildings. Code, datasets, and demo videos are available on our website.
assets:
    paper: https://arxiv.org/abs/2405.19516
    code: https://github.com/penn-waves-lab/PanoRadar
awards: []
---