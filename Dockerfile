FROM golang:alpine as builder

WORKDIR /code/

ADD src/ .

RUN go get -u ./...
RUN go build -o dist/ -ldflags "-s -w"

FROM alpine:latest
WORKDIR /code/

COPY docker-entrypoint.sh /bin/
ENTRYPOINT ["/bin/docker-entrypoint.sh"]

COPY --from=builder /code/dist/go-http-server /bin/
RUN chmod +x /bin/go-http-server

CMD "/bin/go-http-server"
