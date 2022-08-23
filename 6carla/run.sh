cd "6carla"

# build container 
# apptainer build carla-0.9.13.sif docker://carlasim/carla:0.9.13 |& tee out.txt
# apptainer build --sandbox carla-0.9.13/ docker://carlasim/carla:0.9.13

# run container
# apptainer run carla-0.9.13.sif
# apptainer run carla-0.9.13/

# view container
# apptainer shell carla-0.9.13.sif
# apptainer shell carla-0.9.13/

# execute container CarlaUE4.sh
# apptainer exec carla-0.9.13.sif ls -lah /
# apptainer exec carla-0.9.13/ pwd
# bash carla-0.9.13/home/carla/CarlaUE4.sh # successful
# bash carla-0.9.13/home/carla/CarlaUE4.sh # unsuccessful on SAMBHU19: RHEL
# bash carla-0.9.13/home/carla/CarlaUE4.sh -RenderOffscreen
# As of 8/23/2022 6:42:28 PM, now know how to use / to access directory inside container
apptainer exec carla-0.9.13.sif /home/carla/CarlaUE4.sh

# execute container CarlaUE4.sh: GPU selection
# bash carla-0.9.13/home/carla/CarlaUE4.sh
