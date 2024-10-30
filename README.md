# Documentation for setting up K3s on Linux machine

# Pre-requisites:

  - Linux Machine
  - CPU: 1 CPU core (although 2+ cores are recommended for multi-node clusters).
  - Memory: Minimum 512 MB of RAM (1 GB or more recommended, especially for clusters with multiple pods).
  - Disk Space: At least 2 GB of available disk space. More is recommended depending on the workload and logging requirements.



## Steps to install K3s on Linux:

### STEP 1: Install K3s:

```
curl -sfL https://get.k3s.io | sh -
```

### STEP 2: Set the KUBECONFIG environment variable:

```
echo "export KUBECONFIG=/etc/rancher/k3s/k3s.yaml" >> ~/.bashrc
source ~/.bashrc
```

### STEP 3: Enable non-admin user to access the cluster

```
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
```

### STEP 4: Set the auto completion for bash shell for kubectl:

```
echo 'source <(kubectl completion bash)' >>~/.bashrc
```

### STEP 5: Uninstalling K3s (if needed)

```
sudo /usr/local/bin/k3s-uninstall.sh
```