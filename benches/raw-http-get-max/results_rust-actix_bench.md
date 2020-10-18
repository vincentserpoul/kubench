# HTTP rust-actix raw HTTP GET benchmarks

Running 5m test @ http://rust-actix
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           14m
rust-actix-deployment   7/7     7            7           3m40s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-4x2hj       187m         4Mi             
rust-actix-deployment-784c9846b6-8kqcz   305m         4Mi             
rust-actix-deployment-784c9846b6-9vhbx   0m           1Mi             
rust-actix-deployment-784c9846b6-c64x4   353m         5Mi             
rust-actix-deployment-784c9846b6-fhwtc   326m         5Mi             
rust-actix-deployment-784c9846b6-gkt2g   0m           1Mi             
rust-actix-deployment-784c9846b6-pzfbg   0m           1Mi             
rust-actix-deployment-784c9846b6-zb9c4   0m           1Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    16.33ms    1.67ms 228.22ms   86.68%
    Req/Sec     3.06k   233.16     3.58k    74.87%
  Latency Distribution
     50%   16.00ms
     75%   16.66ms
     90%   17.93ms
     99%   21.56ms
  3651042 requests in 5.00m, 407.38MB read
Requests/sec:  12166.18
Transfer/sec:      1.36MB
