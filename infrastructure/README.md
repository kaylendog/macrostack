# Infrastructure

## Setup

Install Consul to the cluster:

```bash
$ helm install consul hashicorp/consul --set global.name=consul --create-namespace --namespace macrostack --values charts/consul.yaml
```

## Usage

View the Consul UI:

```bash
$ minikube kubectl -- port-forward service/consul-server 8500:8500 -n macrostack
```
