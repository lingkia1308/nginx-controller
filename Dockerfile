# Use Go 1.19 Alpine base image
FROM golang:1.19-alpine

# Set the working directory inside the container
WORKDIR /app

# Install git
RUN apk add --no-cache git

# Clone the http-echo repository and checkout a stable version
RUN git clone https://github.com/hashicorp/http-echo.git && \
    cd http-echo && \
    git checkout tags/v0.2.3 && \
    go build

# Set the entrypoint for the container
ENTRYPOINT ["/app/http-echo/http-echo"]

# Expose port 8080 for the http-echo service
EXPOSE 8080
