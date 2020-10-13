# HTTP rust-dropshot raw HTTP GET benchmarks

Running 2m test @ http://rust-dropshot/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment         1/1     1            1           91s
rust-dropshot-deployment   6/6     6            6           82s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-8fwt4          675m         5Mi             
rust-dropshot-deployment-57bcbc5986-fsknw   1272m        3Mi             
rust-dropshot-deployment-57bcbc5986-g8tzp   985m         3Mi             
rust-dropshot-deployment-57bcbc5986-lxm98   956m         3Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.71ms    2.72ms 152.30ms   93.01%
    Req/Sec    18.61k     2.30k   32.36k    71.40%
  Latency Distribution
     50%    2.27ms
     75%    3.34ms
     90%    4.79ms
     99%   11.05ms
  6669970 requests in 1.50m, 1.53GB read
Requests/sec:  73997.24
Transfer/sec:     17.36MB
