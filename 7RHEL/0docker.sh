# https://carla.readthedocs.io/en/latest/build_docker/
cd 7RHEL

# Pull the CARLA image
docker pull carlasim/carla:0.9.13
# Run the CARLA container
# display
sudo docker run --privileged --gpus all --net=host -e DISPLAY=$DISPLAY carlasim/carla:0.9.12 /bin/bash ./CarlaUE4.sh
# off-screen mode
# sudo docker run --privileged --gpus all --net=host -v /tmp/.X11-unix:/tmp/.X11-unix:rw carlasim/carla:0.9.12 /bin/bash ./CarlaUE4.sh -RenderOffScreen
