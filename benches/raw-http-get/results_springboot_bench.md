# HTTP springboot raw HTTP GET benchmarks

```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-qxcxp      714m         10Mi            
springboot-deployment-69844fc59f-62hcn   322m         150Mi           
springboot-deployment-69844fc59f-68pv2   234m         127Mi           
springboot-deployment-69844fc59f-x6d4l   174m         128Mi           
```
 
```
Requests      [total, rate, throughput]         180000, 2000.02, 1999.42
Duration      [total, attack, wait]             1m30s, 1m30s, 27.033ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.559ms, 28.123ms, 27.134ms, 27.635ms, 28.384ms, 37.708ms, 1.585s
Bytes In      [total, mean]                     180000, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:180000  
Error Set:
 
Bucket           #       %       Histogram
[0s,     10ms]   0       0.00%   
[10ms,   20ms]   0       0.00%   
[20ms,   30ms]   175268  97.37%  #########################################################################
[30ms,   40ms]   3141    1.75%   #
[40ms,   50ms]   355     0.20%   
[50ms,   60ms]   204     0.11%   
[60ms,   70ms]   180     0.10%   
[70ms,   80ms]   168     0.09%   
[80ms,   90ms]   32      0.02%   
[90ms,   100ms]  35      0.02%   
[100ms,  200ms]  408     0.23%   
[200ms,  300ms]  150     0.08%   
[300ms,  +Inf]   59      0.03%   
```
