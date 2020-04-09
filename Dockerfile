FROM golang:1.7.1-onbuild

RUN git clone https://github.com/rawdigits/go-flashpaper

WORKDIR go-flashpaper
RUN go build

EXPOSE 8080

ENTRYPOINT ["./go-flashpaper"] 
