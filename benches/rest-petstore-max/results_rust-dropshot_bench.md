# HTTP rust-dropshot raw HTTP GET benchmarks

Running 2m test @ http://rust-dropshot/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment         1/1     1            1           99s
rust-dropshot-deployment   3/3     3            3           80s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-2c8cg          475m         5Mi             
rust-dropshot-deployment-57bcbc5986-82h6x   120m         3Mi             
rust-dropshot-deployment-57bcbc5986-jdhtf   472m         3Mi             
rust-dropshot-deployment-57bcbc5986-tn6jg   83m          3Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.69ms    2.63ms 144.45ms   93.08%
    Req/Sec    18.59k     2.23k   30.70k    71.74%
  Latency Distribution
     50%    2.26ms
     75%    3.32ms
     90%    4.69ms
     99%   10.69ms
  6657156 requests in 1.50m, 1.53GB read
Requests/sec:  73905.16
Transfer/sec:     17.34MB
