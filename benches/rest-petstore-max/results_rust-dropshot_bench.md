# HTTP rust-dropshot raw HTTP GET benchmarks

Running 5m test @ http://rust-dropshot/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment         1/1     1            1           3m46s
rust-dropshot-deployment   10/10   10           10          3m41s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-bwwgb          186m         6Mi             
rust-dropshot-deployment-786c74d74b-5rlqg   841m         2Mi             
rust-dropshot-deployment-786c74d74b-8rsbg   899m         2Mi             
rust-dropshot-deployment-786c74d74b-9t72g   0m           1Mi             
rust-dropshot-deployment-786c74d74b-f6npk   0m           1Mi             
rust-dropshot-deployment-786c74d74b-gssrr   0m           1Mi             
rust-dropshot-deployment-786c74d74b-h9w97   0m           1Mi             
rust-dropshot-deployment-786c74d74b-l5p58   733m         2Mi             
rust-dropshot-deployment-786c74d74b-mx5sg   0m           1Mi             
rust-dropshot-deployment-786c74d74b-v256l   0m           1Mi             
rust-dropshot-deployment-786c74d74b-zdsj6   0m           1Mi             
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.52ms    2.85ms 159.30ms   89.65%
    Req/Sec     2.85k   231.75     3.62k    72.11%
  Latency Distribution
     50%   17.04ms
     75%   17.85ms
     90%   19.76ms
     99%   31.28ms
  3408403 requests in 5.00m, 799.62MB read
Requests/sec:  11357.73
Transfer/sec:      2.66MB
