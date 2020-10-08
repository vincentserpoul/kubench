FROM golang:1.15-buster as builder

WORKDIR /src

COPY ./ ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -extldflags "-static"' -o /go-std ./*.go

FROM scratch

COPY --from=builder /go-std /app/

ENTRYPOINT ["/app/go-std"]