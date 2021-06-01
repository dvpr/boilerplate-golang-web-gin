FROM golang:1.16-alpine

WORKDIR /go/src/app
COPY . .

RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go get github.com/gin-gonic/gin
RUN go get github.com/pilu/fresh
RUN go get github.com/gin-contrib/static
RUN go get github.com/russross/blackfriday

RUN chmod +x start.sh