FROM golang:latest AS builder
WORKDIR /usr/src/app
COPY ./fullcyclerocks.go .
RUN go mod init fullcyclerocks
RUN go mod tidy
RUN go build -ldflags "-w -s" -v
CMD [ "fullcyclerocks" ]
