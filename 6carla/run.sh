cd "6carla"

# build container 
apptainer build carla-0.9.13.sif docker://carlasim/carla:0.9.13 |& tee out.txt
# apptainer build --sandbox carla-0.9.13/ docker://carlasim/carla:0.9.13

# run container
# apptainer run carla-0.9.13.sif
# apptainer run carla-0.9.13/

# view container
apptainer shell carla-0.9.13.sif
# apptainer shell carla-0.9.13/

# execute container CarlaUE4.sh
# apptainer exec carla-0.9.13.sif ls
# apptainer exec carla-0.9.13/ pwd
# bash carla-0.9.13/home/carla/CarlaUE4.sh # successful

# execute container CarlaUE4.sh: GPU selection
# bash carla-0.9.13/home/carla/CarlaUE4.sh
