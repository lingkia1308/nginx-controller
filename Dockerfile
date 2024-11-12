FROM golang:1.19-alpine
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/hashicorp/http-echo.git && \
    cd http-echo && \
    git checkout 3d4c839c7d1a54141cf438b479df4a7e3bbdd812 && \
    go build
EXPOSE 5678
CMD ["./http-echo", "-text=Hello, World!"]
