FROM golang:1.13
ADD VERSION .

LABEL maintainer="Romildo Paiter <romildo.paiter@gmail.com>"
LABEL description="Primeiro Dockerfile para go."

WORKDIR /go/src
COPY . .
RUN GOOS=linux go build olamundo.go
CMD ["./olamundo"]
