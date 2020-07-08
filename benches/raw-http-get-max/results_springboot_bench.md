# HTTP springboot raw HTTP GET benchmarks

```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           7m2s
springboot-deployment   3/3     3            3           77s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dqsrw      29m          39Mi            
springboot-deployment-6cfd845f86-76kbz   870m         338Mi           
springboot-deployment-6cfd845f86-fcd8w   532m         241Mi           
springboot-deployment-6cfd845f86-svgr2   689m         294Mi           
```
 
```
Requests      [total, rate, throughput]         1407301, 15636.67, 15631.43
Duration      [total, attack, wait]             1m30s, 1m30s, 28.73ms
Latencies     [min, mean, 50, 90, 95, 99, max]  963.899µs, 30.316ms, 27.026ms, 38.219ms, 45.332ms, 61.308ms, 663.043ms
Bytes In      [total, mean]                     1407279, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      0:22  200:1407279  
Error Set:
Get "http://springboot": dial tcp 0.0.0.0:0->10.43.155.226:80: connect: connection refused
 
Bucket           #        %       Histogram
[0s,     10ms]   22       0.00%   
[10ms,   20ms]   0        0.00%   
[20ms,   30ms]   1029200  73.13%  ######################################################
[30ms,   40ms]   259504   18.44%  #############
[40ms,   50ms]   76192    5.41%   ####
[50ms,   60ms]   27001    1.92%   #
[60ms,   70ms]   7860     0.56%   
[70ms,   80ms]   2900     0.21%   
[80ms,   90ms]   1478     0.11%   
[90ms,   100ms]  821      0.06%   
[100ms,  200ms]  1811     0.13%   
[200ms,  300ms]  321      0.02%   
[300ms,  +Inf]   191      0.01%   
```
