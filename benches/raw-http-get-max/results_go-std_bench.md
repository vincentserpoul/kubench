# HTTP go-std raw HTTP GET benchmarks

Running 2m test @ http://go-std
  4 threads and 200 connections
```
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment   1/1     1            1           106s
go-std-deployment    3/3     3            3           90s
```
```
NAME                                 CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-nbmsv   827m         5Mi             
go-std-deployment-cf47f9986-t8lmm    104m         8Mi             
go-std-deployment-cf47f9986-vmtxv    338m         9Mi             
go-std-deployment-cf47f9986-zkr8h    343m         8Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.01ms    4.60ms 100.07ms   88.68%
    Req/Sec    26.94k     4.58k   39.41k    71.95%
  Latency Distribution
     50%    0.98ms
     75%    3.71ms
     90%    8.29ms
     99%   21.85ms
  9640169 requests in 1.50m, 1.05GB read
Requests/sec: 107017.40
Transfer/sec:     11.94MB
