FROM golang:1.20.5 as builder
WORKDIR /app
RUN go mod init dotto/fc-golang
COPY main.go .
RUN go build -o bin .

ENTRYPOINT [ "/app/bin" ]