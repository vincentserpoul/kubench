# HTTP rust-actix raw HTTP GET benchmarks

```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           5m6s
rust-actix-deployment   3/3     3            3           75s
```
```
NAME                                     CPU(cores)   MEMORY(bytes)   
bencher-deployment-55c46c6665-dqsrw      1463m        187Mi           
rust-actix-deployment-6c8c76c5c4-rxdgz   15m          7Mi             
```
 
```
Requests      [total, rate, throughput]         1515671, 16840.79, 16835.60
Duration      [total, attack, wait]             1m30s, 1m30s, 27.748ms
Latencies     [min, mean, 50, 90, 95, 99, max]  26.1ms, 28.324ms, 27.482ms, 29.587ms, 32.727ms, 47.862ms, 134.01ms
Bytes In      [total, mean]                     1515671, 1.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:1515671  
Error Set:
 
Bucket           #        %       Histogram
[0s,     10ms]   0        0.00%   
[10ms,   20ms]   0        0.00%   
[20ms,   30ms]   1380511  91.08%  ####################################################################
[30ms,   40ms]   103548   6.83%   #####
[40ms,   50ms]   19709    1.30%   
[50ms,   60ms]   8620     0.57%   
[60ms,   70ms]   2482     0.16%   
[70ms,   80ms]   568      0.04%   
[80ms,   90ms]   110      0.01%   
[90ms,   100ms]  10       0.00%   
[100ms,  200ms]  113      0.01%   
[200ms,  300ms]  0        0.00%   
[300ms,  +Inf]   0        0.00%   
```
