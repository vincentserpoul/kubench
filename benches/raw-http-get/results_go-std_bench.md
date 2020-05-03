# HTTP go-std raw HTTP GET benchmarks

```
NAME                                  CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-qxcxp   697m         12Mi            
go-std-deployment-df466bf87-nclps     153m         8Mi             
go-std-deployment-df466bf87-nlg5b     204m         10Mi            
go-std-deployment-df466bf87-zc2p4     187m         8Mi             
```
 
```
Requests      [total, rate, throughput]         180000, 2000.01, 1999.42
Duration      [total, attack, wait]             1m30s, 1m30s, 26.876ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.483ms, 27.038ms, 26.977ms, 27.275ms, 27.439ms, 28.472ms, 61.857ms
Bytes In      [total, mean]                     180000, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:180000  
Error Set:
 
Bucket           #       %       Histogram
[0s,     10ms]   0       0.00%   
[10ms,   20ms]   0       0.00%   
[20ms,   30ms]   179416  99.68%  ##########################################################################
[30ms,   40ms]   561     0.31%   
[40ms,   50ms]   15      0.01%   
[50ms,   60ms]   6       0.00%   
[60ms,   70ms]   2       0.00%   
[70ms,   80ms]   0       0.00%   
[80ms,   90ms]   0       0.00%   
[90ms,   100ms]  0       0.00%   
[100ms,  200ms]  0       0.00%   
[200ms,  300ms]  0       0.00%   
[300ms,  +Inf]   0       0.00%   
```
