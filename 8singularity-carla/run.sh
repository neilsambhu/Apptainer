#!/bin/sh

cd 8singularity-carla

# singularity build carla-0.9.13.sif docker://carlasim/carla:0.9.13
singularity exec --nv carla-0.9.13.sif /home/carla/CarlaUE4.sh