# Use a base image with Python
FROM python:3.9-slim

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    iproute2 \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install pytest and testinfra
RUN pip install pytest testinfra

# Copy the test files into the image
WORKDIR /app
COPY . /app

# Set the entry point to run the tests
ENTRYPOINT ["pytest", "-v"]