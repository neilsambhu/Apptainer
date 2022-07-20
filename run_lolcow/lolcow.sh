# https://apptainer.org/docs/user/main/quick_start.html#interact-with-images

cd run_lolcow
rm lolcow_latest.sif

# Interact with images
apptainer pull docker://sylabsio/lolcow

# Shell
# apptainer shell lolcow_latest.sif
# apptainer shell docker://sylabsio/lolcow

# Executing Commands
# apptainer exec lolcow_latest.sif cowsay moo
# apptainer exec docker://sylabsio/lolcow cowsay "Fresh from the internet!"

# Running a container
# apptainer run lolcow_latest.sif
# ./lolcow_latest.sif
# apptainer run library://lolcow # failed

cd ..