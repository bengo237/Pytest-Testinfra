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

# Copy the test files into the image
WORKDIR /app
COPY . /app

# Ensure the install.sh script is executable
RUN chmod +x /app/scripts/install.sh

# Optionally run the install script if needed
# RUN /app/scripts/install.sh

# Set the entry point to run the tests
ENTRYPOINT ["pytest", "-v"]
