# HTTP go-std raw HTTP GET benchmarks

Running 5m test @ http://go-std
  4 threads and 200 connections
```
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment   1/1     1            1           3m48s
go-std-deployment    10/10   10           10          3m40s
```
```
NAME                                 CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-4x2hj   193m         8Mi             
go-std-deployment-59987fc7fd-f94lq   0m           7Mi             
go-std-deployment-59987fc7fd-fn5c9   0m           7Mi             
go-std-deployment-59987fc7fd-nl56d   0m           7Mi             
go-std-deployment-59987fc7fd-phtsm   0m           7Mi             
go-std-deployment-59987fc7fd-q7gp5   792m         8Mi             
go-std-deployment-59987fc7fd-qvbps   745m         10Mi            
go-std-deployment-59987fc7fd-rvcg6   802m         8Mi             
go-std-deployment-59987fc7fd-sp7r4   0m           7Mi             
go-std-deployment-59987fc7fd-wsglx   1m           7Mi             
go-std-deployment-59987fc7fd-z88g8   1m           7Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.28ms   13.49ms 544.26ms   99.47%
    Req/Sec     3.18k   272.01     6.02k    65.26%
  Latency Distribution
     50%   15.32ms
     75%   16.03ms
     90%   17.56ms
     99%   26.73ms
  3788090 requests in 5.00m, 422.67MB read
Requests/sec:  12623.34
Transfer/sec:      1.41MB
