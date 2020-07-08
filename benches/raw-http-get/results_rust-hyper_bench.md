# HTTP rust-hyper raw HTTP GET benchmarks

Running 2m test @ http://rust-hyper
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           3m37s
rust-hyper-deployment   12/12   12           12          88s
```
```
NAME                                   CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dvbvr    416m         5Mi             
rust-hyper-deployment-8879d455-6262x   367m         3Mi             
rust-hyper-deployment-8879d455-bdqnb   446m         3Mi             
rust-hyper-deployment-8879d455-rtjfn   360m         3Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.02ms    0.97ms  57.90ms   81.90%
    Req/Sec     1.78k    98.37     2.02k    67.02%
  Latency Distribution
     50%   27.86ms
     75%   28.38ms
     90%   29.01ms
     99%   30.99ms
  639326 requests in 1.50m, 46.34MB read
Requests/sec:   7100.03
Transfer/sec:    526.96KB
