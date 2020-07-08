# HTTP go-std raw HTTP GET benchmarks

```
NAME                 READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment   1/1     1            1           78s
go-std-deployment    3/3     3            3           75s
```
```
NAME                                  CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dqsrw   1932m        31Mi            
go-std-deployment-6884685f7b-98zbh    508m         8Mi             
go-std-deployment-6884685f7b-ffr4x    522m         8Mi             
go-std-deployment-6884685f7b-j52c8    523m         8Mi             
```
 
```
Requests      [total, rate, throughput]         1600890, 17787.14, 17781.41
Duration      [total, attack, wait]             1m30s, 1m30s, 28.988ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.079ms, 27.075ms, 26.31ms, 28.461ms, 30.372ms, 38.803ms, 107.896ms
Bytes In      [total, mean]                     1600890, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:1600890  
Error Set:
 
Bucket           #        %       Histogram
[0s,     10ms]   0        0.00%   
[10ms,   20ms]   0        0.00%   
[20ms,   30ms]   1511099  94.39%  ######################################################################
[30ms,   40ms]   76283    4.77%   ###
[40ms,   50ms]   8616     0.54%   
[50ms,   60ms]   3236     0.20%   
[60ms,   70ms]   1034     0.06%   
[70ms,   80ms]   459      0.03%   
[80ms,   90ms]   102      0.01%   
[90ms,   100ms]  53       0.00%   
[100ms,  200ms]  8        0.00%   
[200ms,  300ms]  0        0.00%   
[300ms,  +Inf]   0        0.00%   
```
