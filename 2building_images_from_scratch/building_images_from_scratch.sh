# https://apptainer.org/docs/user/main/quick_start.html#build-images-from-scratch

cd 2building_images_from_scratch
# Cleanup files
# sudo rm -r ubuntu
# rm -r sandbox
# rm new-sif

# Sandbox Directories
sudo apptainer build --sandbox ubuntu/ docker://ubuntu
sudo apptainer exec --writable ubuntu touch /foo
apptainer exec ubuntu/ ls /foo

# Converting images from one format to another
mkdir sandbox
apptainer build new-sif sandbox

# Cleanup files
sudo rm -r ubuntu
rm -r sandbox
rm new-sif

cd ..