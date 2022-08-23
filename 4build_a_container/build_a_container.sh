# https://apptainer.org/docs/user/main/build_a_container.html

cd 4build_a_container
# Cleanup
# rm carla.sif carla_latest.sif
# sudo rm -r carla

# Overview
# apptainer pull docker://carlasim/carla

# Downloading an existing container from Docker Hub
# sudo apptainer build carla.sif docker://carlasim/carla

# Creating writable --sandbox directories
# sudo apptainer build --sandbox carla/ docker://carlasim/carla
# sudo apptainer shell --writable carla/
# apptainer shell --writable carla/ # fail: does not allow access to carla directory

# Building containers from Apptainer definition files
apptainer build --fakeroot carla.sif carla.def 