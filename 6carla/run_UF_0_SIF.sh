cd "6carla"

# build container 
apptainer build carla-0.9.13.sif docker://carlasim/carla:0.9.13 |& tee out0.txt

# view container
apptainer shell carla-0.9.13.sif
sudo apptainer shell carla-0.9.13.sif
