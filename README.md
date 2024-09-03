[![Build and Push Pytest Docker Image](https://github.com/bengo237/Pytest-Testinfra/actions/workflows/pytest.yml/badge.svg)](https://github.com/bengo237/Pytest-Testinfra/actions/workflows/pytest.yml)


# Pytest Docker Image

This project provides a Docker image for running tests with `pytest` and `testinfra`. The image is based on Python 3.9 and is designed to facilitate running tests in a containerized environment.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Building and Publishing](#building-and-publishing)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, ensure you have:

- Docker: [Installation instructions](https://docs.docker.com/get-docker/)
- GitHub CLI (for interacting with GHCR, if needed): [Installation instructions](https://cli.github.com/)

## Installation

To use this Docker image, you can either pull it from GitHub Container Registry (GHCR) or build it locally.

### Pull the Image from GHCR

To pull the image from GHCR, use the following command:

```bash
docker pull ghcr.io/bengo237/pytest-testinfra:latest
```

### Build the Image Locally

If you prefer to build the image locally, clone this repository and run:

```bash
docker build -t my-python-image:latest .
```

## Usage

Once the image is built or pulled, you can use it to run your tests.

### Running Tests

To run the tests with the Docker image, use the following command:

```bash
docker run --rm -v $(pwd):/app -w /app ghcr.io/bengo237/pytest-testinfra:latest
```

This command mounts the current directory into the container and runs `pytest` within that directory.

## Building and Publishing

### Build the Image

To build the Docker image, use the following command from the root of this repository:

```bash
docker build -t ghcr.io/bengo237/pytest-testinfra:latest .
```

### Publish the Image to GHCR

To publish the built image to GitHub Container Registry, make sure you are logged in to GHCR with Docker:

```bash
docker login ghcr.io -u <your-username> -p <your-github-token>
```

Then push the image:

```bash
docker push ghcr.io/bengo237/pytest-testinfra:latest
```

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a branch for your modification (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

## License

This project is licensed under the [GPL-2.0 license](LICENSE).

### Explanations:
- **Prerequisites**: Lists necessary tools for using the project.
- **Installation**: Instructions for pulling or building the Docker image.
- **Usage**: Shows how to run tests with the Docker image.
- **Building and Publishing**: Explains how to build and publish the Docker image.
- **Contributing**: Instructions for contributing to the project.
- **License**: Mentions the project's license.

Feel free to adjust this template to better fit your project's needs!