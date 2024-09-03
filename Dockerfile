# Use a base image with Python
FROM python:3.9-slim

# Install necessary dependencies including sudo
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    iproute2 \
    wget \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Install pytest and testinfra
RUN pip install pytest pytest-testinfra

# Set the entry point to run the tests
ENTRYPOINT ["pytest", "-v"]
