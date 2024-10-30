# Steps to install K3s on Linux:

## STEP 1: Install K3s:

```
curl -sfL https://get.k3s.io | sh -
```

## STEP 2: Set the KUBECONFIG environment variable:

```
echo "export KUBECONFIG=/etc/rancher/k3s/k3s.yaml" >> ~/.bashrc
source ~/.bashrc
```

## STEP 3: Set the auto completion for bash shell for kubectl:

```
echo 'source <(kubectl completion bash)' >>~/.bashrc
```

## STEP 4: Uninstalling K3s (if needed)

```
sudo /usr/local/bin/k3s-uninstall.sh
```