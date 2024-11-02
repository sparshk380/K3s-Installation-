#!/bin/bash

# Function to install packages as root
install_as_root() {
    echo "Running as root user. Installing packages for superuser..."
    # Add commands to install packages for superuser
    curl -sfL https://get.k3s.io | sh -
    echo "export KUBECONFIG=/etc/rancher/k3s/k3s.yaml" >> ~/.bashrc
    source ~/.bashrc
    echo 'source <(kubectl completion bash)' >>~/.bashrc
}

# Function to install packages as normal user
install_as_normal_user() {
    echo "Running as a normal user. Installing packages for normal user..."
    curl -sfL https://get.k3s.io | sh -
    echo "export KUBECONFIG=/etc/rancher/k3s/k3s.yaml" >> ~/.bashrc
    source ~/.bashrc
    sudo chmod 644 /etc/rancher/k3s/k3s.yaml
    echo 'source <(kubectl completion bash)' >>~/.bashrc
}

# Check if the user is root
if [ "$(id -u)" -eq 0 ]; then
    # If user is root
    install_as_root
else
    # If user is a normal user
    install_as_normal_user
fi
