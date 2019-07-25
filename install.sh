# To get started with Docker Engine - Community on CentOS, make sure you meet the prerequisites, then install Docker.

# SELinux Permissive (Disabling temporarily)
sudo setenforce 0

# set timezone JST
sudo timedatectl set-timezone Asia/Kolkata

# EPEL repo installation
sudo yum install -y epel-release

# git and vim installation
sudo yum install -y vim git

# uninstall old docker version - Older versions of Docker were called docker or docker-engine. 
# If these are installed, uninstall them, along with associated dependencies.
sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-selinux \
                docker-engine-selinux \
                docker-engine

# Install required packages. yum-utils provides the yum-config-manager utility, 
# and device-mapper-persistent-data and lvm2 are required by the devicemapper storage driver.
sudo yum install -y yum-utils \
device-mapper-persistent-data \
lvm2

# Setting up the stable repository
sudo yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo

# Install the latest version of Docker Engine - Community and containerd
sudo yum install -y docker-ce docker-ce-cli containerd.io

# vagrant user add docker group
sudo gpasswd -a vagrant docker

# docker running
sudo systemctl enable docker
sudo systemctl start docker
