# HTTP rust-actix raw HTTP GET benchmarks

Running 2m test @ http://rust-actix
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           5m36s
rust-actix-deployment   6/6     6            6           89s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dvbvr      505m         5Mi             
rust-actix-deployment-6c8c76c5c4-7wnds   317m         6Mi             
rust-actix-deployment-6c8c76c5c4-ssncb   288m         6Mi             
rust-actix-deployment-6c8c76c5c4-tqfx6   370m         7Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.68ms  830.45us  74.04ms   87.34%
    Req/Sec     1.81k    63.46     2.02k    72.93%
  Latency Distribution
     50%   27.60ms
     75%   27.98ms
     90%   28.34ms
     99%   30.01ms
  649058 requests in 1.50m, 72.42MB read
Requests/sec:   7205.02
Transfer/sec:    823.23KB
