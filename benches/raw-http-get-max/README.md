# HTTP multi language/framework/lib webserver benchmarks

benchmark running on a 4 nodes k8s cluster 4vcpu with 8GB RAM each
Services are run separately, 3 replicas each
Bench running on an empty node
Running on digital ocean cloud, colocated machines

## Benchmark

See scripts/bencher.sh

max req/s GET / are sent on the application for 90s

replicas increase if cpu orr mem >75%
