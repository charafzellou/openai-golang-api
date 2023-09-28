# Use an official Golang runtime as a parent image
FROM golang:1.21.1-alpine

# Set the working directory to /go/src/app
WORKDIR /go/src/app

# Copy the current directory contents into the container at /go/src/app
COPY . .

# Set the working directory to /go/src/app/src
WORKDIR /go/src/app/src

# Install any needed packages
RUN go install

# Build the Go app
RUN go build -o /go/src/app/bin/ .

# Set up a volume to store the cloned repositories
VOLUME ["/go/src/app"]

# Run the Go app when the container starts
CMD ["/go/src/app/bin/openai-golang-api"]