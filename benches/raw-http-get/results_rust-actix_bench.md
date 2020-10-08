# HTTP rust-actix raw HTTP GET benchmarks

Running 2m test @ http://rust-actix
4 threads and 200 connections

```
NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
bencher-deployment      1/1     1            1           5m7s
rust-actix-deployment   6/12    12           6           81s
```

```
NAME                                     CPU(cores)   MEMORY(bytes)
bencher-deployment-cf89ddc67-jv47l       1022m        6Mi
rust-actix-deployment-576db56d64-4c2cx   780m         6Mi
rust-actix-deployment-576db56d64-cp5cm   671m         6Mi
rust-actix-deployment-576db56d64-s6t56   678m         6Mi
```

Thread Stats Avg Stdev Max +/- Stdev
Latency 2.32ms 3.33ms 82.65ms 88.78%
Req/Sec 29.87k 5.17k 43.80k 68.87%
Latency Distribution
50% 0.96ms
75% 2.96ms
90% 6.08ms
99% 15.51ms
10691822 requests in 1.50m, 1.17GB read
Requests/sec: 118672.64
Transfer/sec: 13.24MB
