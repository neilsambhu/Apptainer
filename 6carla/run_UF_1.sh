cd "6carla"

# build container 
apptainer build --sandbox carla-0.9.13/ docker://carlasim/carla:0.9.13 |& tee out1.txt

# view container
apptainer shell carla-0.9.13/
