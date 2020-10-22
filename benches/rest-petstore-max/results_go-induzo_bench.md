# HTTP go-induzo raw HTTP GET benchmarks

Running 5m test @ http://go-induzo/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment     1/1     1            1           3m51s
go-induzo-deployment   10/10   10           10          3m45s
```
```
NAME                                    CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-96mdv      661m         6Mi             
go-induzo-deployment-7c6698cf84-6qwwr   1m           9Mi             
go-induzo-deployment-7c6698cf84-8jfg6   1m           7Mi             
go-induzo-deployment-7c6698cf84-c8fl8   1m           9Mi             
go-induzo-deployment-7c6698cf84-cgkz7   1m           7Mi             
go-induzo-deployment-7c6698cf84-l8dck   1m           7Mi             
go-induzo-deployment-7c6698cf84-s24fv   544m         11Mi            
go-induzo-deployment-7c6698cf84-xbgbc   1m           7Mi             
go-induzo-deployment-7c6698cf84-xtn7z   1m           7Mi             
go-induzo-deployment-7c6698cf84-z9zlq   731m         9Mi             
go-induzo-deployment-7c6698cf84-zbcgd   947m         8Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     9.53ms    4.54ms 136.52ms   84.41%
    Req/Sec     5.30k   394.79     8.02k    69.05%
  Latency Distribution
     50%    7.45ms
     75%   11.57ms
     90%   15.56ms
     99%   24.69ms
  6329643 requests in 5.00m, 1.26GB read
Requests/sec:  21091.88
Transfer/sec:      4.28MB
