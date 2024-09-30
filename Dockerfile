# Use the Go 1.23 alpine official image
# https://hub.docker.com/_/golang
FROM golang:1.23-alpine

# Create and change to the app directory.
WORKDIR /app

# Copy local code to the container image.
COPY . .

# Install project dependencies
RUN go get

# Build the app
RUN go build -o app

# Run the service on container startup.
CMD ["./app"]