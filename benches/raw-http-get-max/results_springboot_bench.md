# HTTP springboot raw HTTP GET benchmarks

Running 5m test @ http://springboot
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           22m
springboot-deployment   10/10   10           10          6m34s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-4x2hj       224m         15Mi            
springboot-deployment-767587dcc6-5rd8c   892m         153Mi           
springboot-deployment-767587dcc6-8hw56   1000m        151Mi           
springboot-deployment-767587dcc6-f5fgf   475m         134Mi           
springboot-deployment-767587dcc6-ggxk6   370m         158Mi           
springboot-deployment-767587dcc6-jlxzn   365m         210Mi           
springboot-deployment-767587dcc6-m4mp5   368m         139Mi           
springboot-deployment-767587dcc6-npnf2   1000m        144Mi           
springboot-deployment-767587dcc6-rpgm8   498m         149Mi           
springboot-deployment-767587dcc6-rs42d   388m         155Mi           
springboot-deployment-767587dcc6-sx6l2   996m         144Mi           
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    36.09ms   53.93ms   1.43s    91.74%
    Req/Sec     2.15k   825.04     4.80k    65.84%
  Latency Distribution
     50%   17.31ms
     75%   44.49ms
     90%   83.20ms
     99%  275.89ms
  2568546 requests in 5.00m, 279.71MB read
  Socket errors: connect 0, read 0, write 1104, timeout 0
Requests/sec:   8560.38
Transfer/sec:      0.93MB
