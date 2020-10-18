# HTTP rust-hyper raw HTTP GET benchmarks

Running 5m test @ http://rust-hyper
  4 threads and 200 connections
```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           9m8s
rust-hyper-deployment   10/10   10           10          3m40s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-4x2hj       194m         6Mi             
rust-hyper-deployment-67cd46f587-489rp   0m           0Mi             
rust-hyper-deployment-67cd46f587-4rtxz   0m           1Mi             
rust-hyper-deployment-67cd46f587-5hptm   0m           1Mi             
rust-hyper-deployment-67cd46f587-9kll9   387m         2Mi             
rust-hyper-deployment-67cd46f587-b5hg5   277m         2Mi             
rust-hyper-deployment-67cd46f587-ctmjp   0m           0Mi             
rust-hyper-deployment-67cd46f587-d8mcn   0m           0Mi             
rust-hyper-deployment-67cd46f587-dvffw   401m         2Mi             
rust-hyper-deployment-67cd46f587-lm28g   0m           1Mi             
rust-hyper-deployment-67cd46f587-qzcm9   0m           0Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    15.92ms    2.71ms 231.11ms   93.15%
    Req/Sec     3.14k   269.04     4.04k    65.83%
  Latency Distribution
     50%   15.53ms
     75%   16.22ms
     90%   17.74ms
     99%   21.53ms
  3753020 requests in 5.00m, 272.02MB read
Requests/sec:  12506.05
Transfer/sec:      0.91MB
