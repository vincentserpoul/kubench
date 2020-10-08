# HTTP rust-dropshot raw HTTP GET benchmarks

Running 2m test @ http://rust-dropshot/pet/1
  4 threads and 200 connections
```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment         1/1     1            1           89s
rust-dropshot-deployment   3/3     3            3           81s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-rt7k7          131m         4Mi             
rust-dropshot-deployment-57bcbc5986-5fs6v   94m          3Mi             
rust-dropshot-deployment-57bcbc5986-bm4hq   1026m        3Mi             
rust-dropshot-deployment-57bcbc5986-crltd   303m         3Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.96ms    3.00ms 166.03ms   92.76%
    Req/Sec    17.23k     1.93k   26.54k    70.21%
  Latency Distribution
     50%    2.42ms
     75%    3.64ms
     90%    5.30ms
     99%   12.42ms
  6172514 requests in 1.50m, 1.41GB read
Requests/sec:  68522.79
Transfer/sec:     16.08MB
