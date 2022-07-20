# https://apptainer.org/docs/user/main/quick_start.html#quick-installation-steps

# Install system dependencies
# Ensure repositories are up-to-date
sudo apt update
# Install debian packages for dependencies
sudo apt install -y \
   build-essential \
   libseccomp-dev \
   pkg-config \
   squashfs-tools \
   cryptsetup \
   curl wget git

# Install Go
# https://go.dev/doc/install
export VERSION=1.18.4
# 1. Go download.
curl -O https://dl.google.com/go/go${VERSION}.linux-amd64.tar.gz
# 2. Go install.
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go${VERSION}.linux-amd64.tar.gz
source $HOME/.profile
# echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source $HOME/.profile
go version
# Cleanup downloaded files
rm go${VERSION}.linux-amd64.tar.gz

# Download Apptainer from a release
export VERSION=1.0.3 && # adjust this as necessary \
    wget https://github.com/apptainer/apptainer/releases/download/v${VERSION}/apptainer-${VERSION}.tar.gz && \
    tar -xzf apptainer-${VERSION}.tar.gz && \
    cd apptainer-${VERSION}
# Compile the Apptainer source code
./mconfig && \
    make -C builddir && \
    sudo make -C builddir install
apptainer help
# Cleanup downloaded files
cd ..
rm apptainer-${VERSION}.tar.gz*
rm -r apptainer-${VERSION}