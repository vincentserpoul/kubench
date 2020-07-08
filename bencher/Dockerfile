FROM alpine:3.11

RUN apk update && apk add --no-cache ca-certificates && update-ca-certificates

# vegeta load tester
RUN wget https://github.com/tsenart/vegeta/releases/download/v12.8.3/vegeta-12.8.3-linux-amd64.tar.gz && tar xvf vegeta-12.8.3-linux-amd64.tar.gz vegeta && mv vegeta /usr/local/bin/vegeta && chmod +x /usr/local/bin/vegeta;

RUN wget https://raw.githubusercontent.com/grpc/grpc-go/master/examples/helloworld/helloworld/helloworld.proto;

RUN apk add wrk

# Create appuser
RUN adduser -D -g '' appuser

USER appuser
CMD "/bin/sh";

# docker build ./ --rm -t vincentserpoul/kubench-bencher -f ./Dockerfile
# docker push vincentserpoul/kubench-bencher

# docker run -dit --name kubench-bencher -p 8080:8080 --rm vincentserpoul/kubench-bencher
# curl http://127.0.0.1:8080