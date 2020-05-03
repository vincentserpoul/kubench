# kubench

# Goal

Benchmark different containerized applications within a kubernetes cluster.

## Pre-requisites

- [k3d v1.7.0](https://github.com/rancher/k3d)
- [kubectl v1.17.3](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [helm v3.1.2](https://helm.sh/docs/intro/install/)
- [doctl v1.43.0](https://github.com/digitalocean/doctl) - if you re running in digitalocean

## Cluster management

```bash
    ./cluster.sh --help
```

You can create a cluster with:

- k3d, locally (default, or with -p k3d)
- digital ocean managed k8s (requires doctl and a digital ocean account) (with -p digitalocean)

## Benches

### Raw HTTP GET

to run locally

```bash
    ./cluster.sh
    ./benches/raw-http-get/bench.sh
    ./cluster.sh -a delete -p k3d
```

to run in k8s digital ocean

```bash
    ./cluster.sh -p digitalocean
    ./benches/raw-http-get/bench.sh
    ./cluster.sh -a delete -p digitalocean
```

results should appear in ./benches/raw-http-get/

### REST

<!-- TODO -->

### Databases

<!-- TODO -->

## To do list

- [ ] Add github actions to auto build containers
