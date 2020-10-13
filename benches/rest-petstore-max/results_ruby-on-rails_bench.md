# HTTP ruby-on-rails raw HTTP GET benchmarks

Running 2m test @ http://ruby-on-rails/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment         1/1     1            1           5m21s
ruby-on-rails-deployment   3/3     3            3           88s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-8fwt4          56m          8Mi             
go-induzo-deployment-6dbd5fc974-2792z       1m           2Mi             
go-induzo-deployment-6dbd5fc974-zl6qc       0m           2Mi             
ruby-on-rails-deployment-7d66747c57-8w9hf   1082m        105Mi           
ruby-on-rails-deployment-7d66747c57-9bhx8   1092m        105Mi           
ruby-on-rails-deployment-7d66747c57-dgktg   1086m        105Mi           
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   190.54ms  246.77ms   1.68s    79.55%
    Req/Sec   548.07    172.30     1.12k    68.07%
  Latency Distribution
     50%   12.54ms
     75%  378.60ms
     90%  593.88ms
     99%  787.03ms
  196390 requests in 1.50m, 107.69MB read
Requests/sec:   2179.74
Transfer/sec:      1.20MB
