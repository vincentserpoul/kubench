# HTTP go-induzo raw HTTP GET benchmarks

Running 5m test @ http://go-induzo/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment     1/1     1            1           9m6s
go-induzo-deployment   10/10   10           10          3m40s
```
```
NAME                                   CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-bwwgb     197m         4Mi             
go-induzo-deployment-d6cbc56c6-97j62   1m           7Mi             
go-induzo-deployment-d6cbc56c6-c2w24   0m           7Mi             
go-induzo-deployment-d6cbc56c6-jh768   0m           7Mi             
go-induzo-deployment-d6cbc56c6-mfdhb   0m           6Mi             
go-induzo-deployment-d6cbc56c6-mh6mt   820m         11Mi            
go-induzo-deployment-d6cbc56c6-pktn4   939m         11Mi            
go-induzo-deployment-d6cbc56c6-vdjjj   1m           5Mi             
go-induzo-deployment-d6cbc56c6-x64jw   893m         11Mi            
go-induzo-deployment-d6cbc56c6-zhsp7   0m           5Mi             
go-induzo-deployment-d6cbc56c6-zvf9m   0m           5Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.22ms    2.42ms 151.75ms   89.05%
    Req/Sec     3.08k   241.63     6.59k    71.50%
  Latency Distribution
     50%   15.81ms
     75%   16.57ms
     90%   18.23ms
     99%   27.97ms
  3677481 requests in 5.00m, 747.02MB read
Requests/sec:  12255.32
Transfer/sec:      2.49MB
