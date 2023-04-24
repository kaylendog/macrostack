# Infrastructure

## Setup

Install the local-path provisioner:

```bash
$ minikube kubectl -- apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.24/deploy/local-path-storage.yaml
```

Install Consul to the cluster:

```bash
$ helm install consul hashicorp/consul --set global.name=consul --create-namespace --namespace macrostack --values charts/consul.yaml
```

## Usage

View the Consul UI:

```bash
$ minikube kubectl -- port-forward service/consul-server 8500:8500 -n macrostack
```
