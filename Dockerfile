# Use a small Go base image
FROM golang:1.20-alpine

# Set the working directory
WORKDIR /app

# Download the http-echo binary
RUN go install github.com/hashicorp/http-echo@latest

# Expose the port the app runs on
EXPOSE 5678

# Command to run the http-echo server
CMD ["http-echo", "-text=Hello, World!"]
