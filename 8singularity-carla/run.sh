#!/bin/sh

cd 8singularity-carla

# singularity build carla-0.9.13.sif docker://carlasim/carla:0.9.13
# SINGULARITYENV_CUDA_VISIBLE_DEVICES=0 singularity exec --nv carla-0.9.13.sif /home/carla/CarlaUE4.sh
# APPTAINERENV_CUDA_VISIBLE_DEVICES=1 singularity exec --nv carla-0.9.13.sif /home/carla/CarlaUE4.sh
export SINGULARITYENV_CUDA_VISIBLE_DEVICES=1
singularity exec --nv carla-0.9.13.sif /home/carla/CarlaUE4.sh
# singularity shell --nv carla-0.9.13.sif
# singularity exec --nv carla-0.9.13.sif CUDA_VISIBLE_DEVICES=1 /home/carla/CarlaUE4.sh