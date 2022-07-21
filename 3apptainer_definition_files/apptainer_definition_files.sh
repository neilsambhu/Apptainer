https://apptainer.org/docs/user/main/quick_start.html#apptainer-definition-files

cd 3apptainer_definition_files

# Apptainer Definition Files
apptainer pull docker://sylabsio/lolcow
sudo apptainer build lolcow.sif lolcow.def

# Cleanup downloaded files
rm lolcow_latest.sif lolcow.sif

cd ..