# HTTP rust-hyper raw HTTP GET benchmarks

```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-qxcxp      692m         13Mi            
rust-hyper-deployment-85d7979fd8-lw2x2   71m          1Mi             
rust-hyper-deployment-85d7979fd8-qhjxn   131m         1Mi             
rust-hyper-deployment-85d7979fd8-x42mq   144m         2Mi             
```
 
```
Requests      [total, rate, throughput]         180000, 2000.01, 1999.38
Duration      [total, attack, wait]             1m30s, 1m30s, 28.272ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.539ms, 27.923ms, 27.875ms, 28.541ms, 28.758ms, 29.629ms, 49.531ms
Bytes In      [total, mean]                     180000, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:180000  
Error Set:
 
Bucket           #       %       Histogram
[0s,     10ms]   0       0.00%   
[10ms,   20ms]   0       0.00%   
[20ms,   30ms]   178687  99.27%  ##########################################################################
[30ms,   40ms]   1275    0.71%   
[40ms,   50ms]   38      0.02%   
[50ms,   60ms]   0       0.00%   
[60ms,   70ms]   0       0.00%   
[70ms,   80ms]   0       0.00%   
[80ms,   90ms]   0       0.00%   
[90ms,   100ms]  0       0.00%   
[100ms,  200ms]  0       0.00%   
[200ms,  300ms]  0       0.00%   
[300ms,  +Inf]   0       0.00%   
```
