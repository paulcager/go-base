# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository provides a base Docker image for Go development. Its primary purpose is to pre-download and cache common Go dependencies to speed up Docker builds for Go projects.

## Architecture

The project is intentionally minimal - it consists only of a Dockerfile that:
1. Uses an official Golang base image (currently 1.21.0)
2. Pre-downloads commonly used Go modules via `go mod download`
3. Caches these dependencies in the image layers

This image is meant to be used as a base image in other Go projects' Dockerfiles, eliminating the need to download these common dependencies repeatedly.

## Building the Docker Image

```bash
docker build -t go-base .
```

To build with a specific tag:
```bash
docker build -t go-base:1.21.0 .
```

## Using This Image

In other Go projects, reference this as a base image:
```dockerfile
FROM go-base:latest
# Your project-specific build steps here
```

## Updating Dependencies

To add or update pre-loaded dependencies, edit the `RUN go mod download -x` command in the Dockerfile. Each dependency should be specified as:
```
package@version \
```

## Go Version Updates

When updating the Go version:
1. Update the FROM line in Dockerfile (currently `FROM golang:1.21.0`)
2. Consider reviewing the pre-loaded dependencies for compatibility
3. Rebuild and test the image
