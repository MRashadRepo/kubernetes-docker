#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t flask-app:latest .

# Step 2: 
# List docker images
docker images ls

# Step 3: 
# Run flask app
docker run -i -p 8000:80 flask-app:latest