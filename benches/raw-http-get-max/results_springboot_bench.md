# HTTP springboot raw HTTP GET benchmarks

Running 2m test @ http://springboot
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           7m31s
springboot-deployment   6/6     6            6           88s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-nbmsv       314m         11Mi            
springboot-deployment-79b9686d84-2rrfh   1814m        313Mi           
springboot-deployment-79b9686d84-lzgg6   1183m        293Mi           
springboot-deployment-79b9686d84-mpq62   1621m        313Mi           
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    25.49ms   82.05ms   1.90s    94.59%
    Req/Sec     7.53k     3.53k   17.35k    59.00%
  Latency Distribution
     50%    5.40ms
     75%   12.41ms
     90%   39.66ms
     99%  431.94ms
  2697142 requests in 1.50m, 293.72MB read
  Socket errors: connect 0, read 0, write 1026, timeout 1
Requests/sec:  29946.02
Transfer/sec:      3.26MB
