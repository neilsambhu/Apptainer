# https://apptainer.org/docs/user/main/docker_and_oci.html#building-from-docker-oci-containers

cd 5support_for_docker_oci_containers
# Cleanup
sudo rm carla.sif
sudo rm -r carla/

sudo systemctl start docker
start=`date +%s.%N`
dt=$(date '+%m/%d/%Y %H:%M:%S');
# echo $start
echo "$dt: start building container"

# Building From Docker / OCI Containers
# sudo apptainer build carla.sif carla.def
# $ sudo apptainer build --sandbox alpine/ docker://alpine
sudo apptainer build --sandbox carla/ carla.def
# sudo apptainer build --sandbox --fakeroot carla/ carla.def #FATAL:   newuidmap was not found in PATH (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin), required with fakeroot and unprivileged installation
# sudo apptainer build --sandbox --net carla/ carla.def #failed: "net" argument

# change permissions for carla directory
sudo chmod -R 777 carla/

# Convert carla directory to carla.sif
# sudo apptainer build carla.sif carla/

# sudo ./carla.sif

sudo systemctl stop docker

end=`date +%s.%N`
dt=$(date '+%m/%d/%Y %H:%M:%S');
# echo $end
echo "$dt: end building container"
runtime=$( echo "$end - $start" | bc -l )
echo $runtime seconds

# bash work_with_container.sh