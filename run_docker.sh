#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build . --tag app

# Step 2: 
docker image ls app

# Step 3: 
docker run -p 8000:80 app
