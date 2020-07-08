# HTTP rust-hyper raw HTTP GET benchmarks

```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           3m14s
rust-hyper-deployment   3/3     3            3           77s
```
```
NAME                                   CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dqsrw    2252m        36Mi            
rust-hyper-deployment-8879d455-cffvg   385m         6Mi             
rust-hyper-deployment-8879d455-knzsx   375m         6Mi             
rust-hyper-deployment-8879d455-svxfw   375m         6Mi             
```
 
```
Requests      [total, rate, throughput]         1545060, 17167.31, 17161.77
Duration      [total, attack, wait]             1m30s, 1m30s, 29.074ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.12ms, 28.192ms, 27.581ms, 29.436ms, 31.523ms, 41.387ms, 119.611ms
Bytes In      [total, mean]                     1545060, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:1545060  
Error Set:
 
Bucket           #        %       Histogram
[0s,     10ms]   0        0.00%   
[10ms,   20ms]   0        0.00%   
[20ms,   30ms]   1421893  92.03%  #####################################################################
[30ms,   40ms]   105169   6.81%   #####
[40ms,   50ms]   12444    0.81%   
[50ms,   60ms]   4046     0.26%   
[60ms,   70ms]   1235     0.08%   
[70ms,   80ms]   169      0.01%   
[80ms,   90ms]   85       0.01%   
[90ms,   100ms]  15       0.00%   
[100ms,  200ms]  4        0.00%   
[200ms,  300ms]  0        0.00%   
[300ms,  +Inf]   0        0.00%   
```
