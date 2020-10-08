# HTTP go-std raw HTTP GET benchmarks

Running 2m test @ http://go-std
  4 threads and 200 connections
```
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment   1/1     1            1           84s
go-std-deployment    3/3     3            3           80s
```
```
NAME                                 CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-jv47l   486m         4Mi             
go-std-deployment-cf47f9986-ghkrv    237m         7Mi             
go-std-deployment-cf47f9986-n4xjm    195m         8Mi             
go-std-deployment-cf47f9986-wlsl4    788m         9Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.99ms    4.48ms  67.05ms   88.49%
    Req/Sec    26.65k     3.29k   37.65k    67.52%
  Latency Distribution
     50%    0.99ms
     75%    3.74ms
     90%    8.21ms
     99%   21.54ms
  9544312 requests in 1.50m, 1.04GB read
Requests/sec: 105950.24
Transfer/sec:     11.82MB
