# GitHub Actions Workflows

## Docker Image Publishing

This repository automatically builds and publishes Docker images using GitHub Actions.

### How It Works

The `docker-publish.yml` workflow runs on:
- **Every push to `master`/`main`** - Builds and publishes image with `latest` tag
- **Every tag push (v*)** - Builds and publishes with semantic version tags
- **Pull requests** - Validates the workflow only (doesn't publish)

### Published Images

Images are published to two registries:

**GitHub Container Registry (ghcr.io)**:
```bash
ghcr.io/paulcager/go-base:latest
ghcr.io/paulcager/go-base:main
ghcr.io/paulcager/go-base:v1.25.4
```

**Docker Hub** (if configured):
```bash
paulcager/go-base:latest
paulcager/go-base:main
paulcager/go-base:v1.25.4
```

### Usage

#### Pull the latest image:
```bash
docker pull ghcr.io/paulcager/go-base:latest
```

#### Use as base image in your Dockerfile:
```dockerfile
FROM ghcr.io/paulcager/go-base:latest
WORKDIR /go/src/app
COPY . .
RUN go build -o myapp
```

### Creating a Release

To publish a versioned release that matches the Go version:

```bash
# Tag with the Go version
git tag v1.25.4
git push origin v1.25.4
```

This will automatically build and publish:
- `ghcr.io/paulcager/go-base:1.25.4`
- `ghcr.io/paulcager/go-base:1.25`
- `ghcr.io/paulcager/go-base:1`
- `ghcr.io/paulcager/go-base:latest`

### Image Visibility

By default, GitHub Container Registry images are **private**. To make them public:

1. Go to https://github.com/paulcager/go-base/pkgs/container/go-base
2. Click "Package settings"
3. Scroll to "Danger Zone"
4. Click "Change visibility" → "Public"

### Multi-Platform Support

The workflow builds for both:
- `linux/amd64` (x86_64)
- `linux/arm64` (ARM, e.g., Raspberry Pi, M1/M2 Mac)

### Publishing to Docker Hub

To also publish to Docker Hub, configure these GitHub secrets:

1. Create a Docker Hub access token at https://hub.docker.com/settings/security
2. In your GitHub repository, go to Settings → Secrets and variables → Actions
3. Add these secrets:
   - `DOCKERHUB_USERNAME` - Your Docker Hub username
   - `DOCKERHUB_TOKEN` - Your Docker Hub access token

### Monitoring Builds

View build status and logs:
- https://github.com/paulcager/go-base/actions

### What Gets Built

This base image includes:
- Go 1.25.4
- Pre-downloaded common Go dependencies (see Dockerfile)
- Ready to use as a base for other Go projects
