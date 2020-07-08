# HTTP springboot raw HTTP GET benchmarks

Running 2m test @ http://springboot
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           7m41s
springboot-deployment   6/11    11           6           95s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dvbvr      323m         6Mi             
springboot-deployment-6cfd845f86-48gb7   797m         310Mi           
springboot-deployment-6cfd845f86-hpr2n   890m         296Mi           
springboot-deployment-6cfd845f86-twd7k   545m         303Mi           
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    27.46ms    4.89ms 453.60ms   96.10%
    Req/Sec     1.83k    99.61     2.02k    75.60%
  Latency Distribution
     50%   26.56ms
     75%   27.18ms
     90%   29.37ms
     99%   37.42ms
  656947 requests in 1.50m, 71.54MB read
  Socket errors: connect 0, read 0, write 452, timeout 0
Requests/sec:   7291.25
Transfer/sec:    813.04KB
