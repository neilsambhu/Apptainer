cd 5support_for_docker_oci_containers
echo "start modifying container"

# sudo apptainer shell carla.sif
# sudo apptainer exec carla.sif pwd
# sudo ./carla.sif

sudo apptainer shell --writable carla/
# apptainer shell --writable carla/

# install CARLA
# install pip
# apptainer exec --writable carla/ apt update

echo "end modifying container"