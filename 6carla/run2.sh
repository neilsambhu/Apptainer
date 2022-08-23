cd "6carla"

# https://github.com/carla-simulator/carla/issues/4256
cat /etc/redhat-release 
nvidia-smi | grep Version | awk '{print $6}'
nvidia-container-cli --version | head -1
nvidia-smi -L | head -1
singularity --version
uname -m
singularity build carla-0.9.13.sif docker://carlasim/carla:0.9.13