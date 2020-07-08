# HTTP go-std raw HTTP GET benchmarks

Running 2m test @ http://go-std
  4 threads and 200 connections
```
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment   1/1     1            1           99s
go-std-deployment    12/12   12           12          88s
```
```
NAME                                  CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dvbvr   375m         4Mi             
go-std-deployment-6884685f7b-bbtsb    564m         6Mi             
go-std-deployment-6884685f7b-dkld2    647m         6Mi             
go-std-deployment-6884685f7b-l6xsq    665m         6Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    26.74ms  726.74us  59.86ms   91.88%
    Req/Sec     1.87k    66.73     2.02k    72.69%
  Latency Distribution
     50%   26.54ms
     75%   26.80ms
     90%   27.32ms
     99%   29.56ms
  671157 requests in 1.50m, 74.89MB read
Requests/sec:   7455.39
Transfer/sec:    851.84KB
