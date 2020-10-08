# HTTP rust-actix raw HTTP GET benchmarks

Running 2m test @ http://rust-actix
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           5m33s
rust-actix-deployment   12/12   12           12          86s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-nbmsv       876m         6Mi             
rust-actix-deployment-576db56d64-2p9cm   749m         7Mi             
rust-actix-deployment-576db56d64-4kvtg   664m         6Mi             
rust-actix-deployment-576db56d64-r5lmv   827m         6Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.28ms    3.38ms 103.48ms   89.32%
    Req/Sec    31.00k     5.02k   42.40k    68.23%
  Latency Distribution
     50%    0.93ms
     75%    2.88ms
     90%    5.91ms
     99%   15.94ms
  11099759 requests in 1.50m, 1.21GB read
Requests/sec: 123199.28
Transfer/sec:     13.75MB
