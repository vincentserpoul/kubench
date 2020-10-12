# HTTP go-induzo raw HTTP GET benchmarks

Running 2m test @ http://go-induzo/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment     1/1     1            1           3m31s
go-induzo-deployment   12/14   14           12          81s
```
```
NAME                                    CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-2c8cg      854m         5Mi             
go-induzo-deployment-6dbd5fc974-kw756   537m         8Mi             
go-induzo-deployment-6dbd5fc974-ld5n6   998m         8Mi             
go-induzo-deployment-6dbd5fc974-zrplt   963m         8Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.37ms    4.71ms  77.30ms   86.88%
    Req/Sec    24.52k     2.97k   38.32k    69.72%
  Latency Distribution
     50%    1.12ms
     75%    4.50ms
     90%    9.64ms
     99%   21.29ms
  8780774 requests in 1.50m, 1.74GB read
Requests/sec:  97460.71
Transfer/sec:     19.80MB
