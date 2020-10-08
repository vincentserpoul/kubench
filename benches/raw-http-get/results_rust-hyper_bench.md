# HTTP rust-hyper raw HTTP GET benchmarks

Running 2m test @ http://rust-hyper
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           3m15s
rust-hyper-deployment   12/18   18           12          81s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-jv47l       1052m        5Mi             
rust-hyper-deployment-77cbf496b9-8rfnt   207m         3Mi             
rust-hyper-deployment-77cbf496b9-8xbgw   651m         3Mi             
rust-hyper-deployment-77cbf496b9-sn4l8   547m         3Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.66ms    1.69ms 109.84ms   92.18%
    Req/Sec    31.05k     3.85k   41.51k    70.89%
  Latency Distribution
     50%    1.26ms
     75%    1.96ms
     90%    2.97ms
     99%    8.40ms
  11117014 requests in 1.50m, 805.75MB read
Requests/sec: 123416.13
Transfer/sec:      8.95MB
