# HTTP ruby-on-rails raw HTTP GET benchmarks

Running 5m test @ http://ruby-on-rails/pet/bu0oinkev9hd10a678c0
  4 threads and 200 connections
```
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment         1/1     1            1           14m
ruby-on-rails-deployment   10/10   10           10          3m44s
```
```
NAME                                        CPU(cores)   MEMORY(bytes)   
bencher-deployment-cf89ddc67-bwwgb          50m          18Mi            
ruby-on-rails-deployment-56b7b58d55-5zcdp   1m           91Mi            
ruby-on-rails-deployment-56b7b58d55-8xd74   994m         104Mi           
ruby-on-rails-deployment-56b7b58d55-blb8w   998m         103Mi           
ruby-on-rails-deployment-56b7b58d55-cpsk5   1m           91Mi            
ruby-on-rails-deployment-56b7b58d55-cwg98   1m           91Mi            
ruby-on-rails-deployment-56b7b58d55-hxk86   1m           91Mi            
ruby-on-rails-deployment-56b7b58d55-pdxgm   999m         104Mi           
ruby-on-rails-deployment-56b7b58d55-t6hrx   1m           92Mi            
ruby-on-rails-deployment-56b7b58d55-vmx95   1m           91Mi            
ruby-on-rails-deployment-56b7b58d55-vpjfm   1m           91Mi            
```
 
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   288.95ms  418.93ms   2.00s    80.34%
    Req/Sec   306.22    107.97   767.00     68.55%
  Latency Distribution
     50%   22.42ms
     75%  559.34ms
     90%    1.02s 
     99%    1.44s 
  273765 requests in 5.00m, 150.12MB read
  Socket errors: connect 0, read 0, write 0, timeout 48
Requests/sec:    912.36
Transfer/sec:    512.31KB
