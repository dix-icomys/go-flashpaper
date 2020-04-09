FROM golang:latest as BUILD

ADD . /go/src/github.com/dix-icomys/go-flashpaper

# WORKDIR /go/src/github.com/dix-icomys/go-flashpaper

RUN cd /go/src/github.com/dix-icomys/go-flashpaper && \
  go get && \
  go build -o /usr/local/bin && \
  rm -rf /go/*

# FROM alpine

# COPY --from=BUILD /go/src/github.com/dix-icomys/go-flashpaper/bin/* /usr/local/bin

EXPOSE 8080

ENTRYPOINT ["go-flashpaper"]
