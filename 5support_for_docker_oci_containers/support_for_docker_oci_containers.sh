# https://apptainer.org/docs/user/main/docker_and_oci.html#building-from-docker-oci-containers

cd 5support_for_docker_oci_containers
# Cleanup
sudo rm carla.sif
sudo rm -r carla/

# systemctl start docker
# start=`date +%s.%N`
# # echo $start

# # Building From Docker / OCI Containers
# # sudo apptainer build carla.sif carla.def
# # $ sudo apptainer build --sandbox alpine/ docker://alpine
# sudo apptainer build --sandbox carla/ carla.def

# # change permissions for carla directory
# sudo chmod -R 777 carla/

# # Convert carla directory to carla.sif
# # sudo apptainer build carla.sif carla/

# # sudo ./carla.sif

# systemctl stop docker

# end=`date +%s.%N`
# # echo $end
# runtime=$( echo "$end - $start" | bc -l )
# echo $runtime seconds