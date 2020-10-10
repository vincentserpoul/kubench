FROM golang:1.15-buster as builder

WORKDIR /src

COPY ./ ./

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -extldflags "-static"' -o /go-induzo ./*.go

FROM scratch

COPY --from=builder /go-induzo /app/

ENTRYPOINT ["/app/go-induzo"]