# HTTP rust-actix raw HTTP GET benchmarks

```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-qxcxp      701m         10Mi            
rust-actix-deployment-86b6c845c9-2s6nh   92m          3Mi             
rust-actix-deployment-86b6c845c9-kpk27   96m          2Mi             
rust-actix-deployment-86b6c845c9-qglng   81m          3Mi             
```
 
```
Requests      [total, rate, throughput]         180000, 2000.01, 1999.39
Duration      [total, attack, wait]             1m30s, 1m30s, 27.868ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.601ms, 27.985ms, 27.941ms, 28.558ms, 28.737ms, 29.36ms, 222.63ms
Bytes In      [total, mean]                     180000, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:180000  
Error Set:
 
Bucket           #       %       Histogram
[0s,     10ms]   0       0.00%   
[10ms,   20ms]   0       0.00%   
[20ms,   30ms]   179051  99.47%  ##########################################################################
[30ms,   40ms]   935     0.52%   
[40ms,   50ms]   1       0.00%   
[50ms,   60ms]   0       0.00%   
[60ms,   70ms]   0       0.00%   
[70ms,   80ms]   0       0.00%   
[80ms,   90ms]   0       0.00%   
[90ms,   100ms]  0       0.00%   
[100ms,  200ms]  3       0.00%   
[200ms,  300ms]  10      0.01%   
[300ms,  +Inf]   0       0.00%   
```
