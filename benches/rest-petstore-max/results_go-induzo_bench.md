# HTTP go-induzo raw HTTP GET benchmarks

Running 2m test @ http://go-induzo/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment     1/1     1            1           3m23s
go-induzo-deployment   3/6     6            3           81s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-8fwt4          873m         5Mi             
go-induzo-deployment-6dbd5fc974-59x4x       1017m        8Mi             
go-induzo-deployment-6dbd5fc974-q47q8       1021m        8Mi             
go-induzo-deployment-6dbd5fc974-wjlx4       1226m        9Mi             
rust-dropshot-deployment-57bcbc5986-hwrcp   0m           1Mi             
rust-dropshot-deployment-57bcbc5986-scn7q   0m           1Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.38ms    4.71ms  68.38ms   86.93%
    Req/Sec    24.50k     3.13k   35.11k    68.87%
  Latency Distribution
     50%    1.14ms
     75%    4.52ms
     90%    9.61ms
     99%   21.38ms
  8773740 requests in 1.50m, 1.74GB read
Requests/sec:  97377.95
Transfer/sec:     19.78MB
