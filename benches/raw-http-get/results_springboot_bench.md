# HTTP springboot raw HTTP GET benchmarks

Running 2m test @ http://springboot
4 threads and 200 connections

```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           7m6s
springboot-deployment   12/12   12           12          89s
```

```
NAME                                     CPU(cores)   MEMORY(bytes)
bencher-deployment-cf89ddc67-jv47l       333m         11Mi
springboot-deployment-79b9686d84-5p9r6   1181m        311Mi
springboot-deployment-79b9686d84-dtx99   1278m        330Mi
springboot-deployment-79b9686d84-wl8gc   1489m        316Mi
```

Thread Stats Avg Stdev Max +/- Stdev
Latency 67.23ms 175.74ms 2.00s 91.65%
Req/Sec 5.56k 4.03k 15.24k 61.79%
Latency Distribution
50% 6.37ms
75% 32.38ms
90% 191.27ms
99% 920.59ms
1994428 requests in 1.50m, 217.19MB read
Socket errors: connect 0, read 0, write 3273, timeout 91
Requests/sec: 22143.50
Transfer/sec: 2.41MB
