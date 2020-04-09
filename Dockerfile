FROM golang:latest as BUILD

ADD . /go/src/github.com/dix-icomys/go-flashpaper

WORKDIR /go/src/github.com/dix-icomys/go-flashpaper

RUN go get && go build

RUN ln -s /go/src/github.com/dix-icomys/go-flashpaper/go-flashpaper /usr/local/bin

# FROM alpine

# COPY --from=BUILD /go/src/github.com/dix-icomys/go-flashpaper/bin/* /usr/local/bin

EXPOSE 8080

ENTRYPOINT ["go-flashpaper"]
