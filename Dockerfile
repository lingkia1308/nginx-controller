FROM golang:1.19-alpine
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/hashicorp/http-echo.git && cd http-echo && go build
EXPOSE 5678
CMD ["./http-echo", "-text=Hello, World!"]
