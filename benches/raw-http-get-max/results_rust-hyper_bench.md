# HTTP rust-hyper raw HTTP GET benchmarks

Running 2m test @ http://rust-hyper
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           3m37s
rust-hyper-deployment   9/9     9            9           80s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-nbmsv       1096m        6Mi             
rust-hyper-deployment-77cbf496b9-h7x8k   682m         3Mi             
rust-hyper-deployment-77cbf496b9-vkj9z   616m         2Mi             
rust-hyper-deployment-77cbf496b9-wtbh5   506m         3Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.68ms    1.76ms 107.70ms   92.40%
    Req/Sec    30.56k     5.25k   41.85k    72.42%
  Latency Distribution
     50%    1.27ms
     75%    2.00ms
     90%    3.02ms
     99%    8.23ms
  10942929 requests in 1.50m, 793.14MB read
Requests/sec: 121474.50
Transfer/sec:      8.80MB
