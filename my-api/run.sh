#!/bin/bash

# Author: Jose Ignacio Martinez <gsuriv@gmail.com>

# Build container image
docker build -t my-api .
# Run container on port 8080/TCP
docker run -p 8080:8080 my-api:latest
