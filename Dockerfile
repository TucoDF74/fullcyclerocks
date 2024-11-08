FROM golang:latest
WORKDIR /usr/src/app
COPY ./fullcyclerocks.go .
RUN go mod init fullcyclerocks
RUN go mod tidy
RUN go build -v -o /usr/local/bin/fullcyclerocks ./...
CMD [ "fullcyclerocks" ]