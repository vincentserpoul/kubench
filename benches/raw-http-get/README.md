# HTTP multi language/framework/lib webserver benchmarks

benchmark running on a 4 nodes k8s cluster 4vcpu with 8GB RAM each
Services are run separately, 3 replicas each
Bench running on an empty node
Running on digital ocean cloud, colocated machines

## Benchmark

See scripts/bencher.sh

2000 req/s GET / are sent on the application for 90s

replicas stay constant and we don't take cpu and ram usage
