#!/bin/sh
set -e
# This script installs docker-ce edition to CentOS 7
# Using method recomended in https://docs.docker.com/install/linux/docker-ce/centos/
echo "Uninstalling old versions"
sudo yum -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
echo "Setting Repositories"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
echo "Installing Docker"
sudo yum install docker-ce-19.03.2 docker-ce-cli-19.03.2 containerd.io
echo "Starting Docker Service"
sudo systemctl start docker