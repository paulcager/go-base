# go-base

Base Docker image for Go development with pre-cached common dependencies.

## Usage

Use as a base image in your Go projects:

```dockerfile
FROM ghcr.io/paulcager/go-base:latest
WORKDIR /go/src/app
COPY . .
RUN go build -o myapp
```

## What's Included

- **Go 1.25.4**
- Pre-downloaded common Go modules:
  - Prometheus client libraries
  - Google Cloud and gRPC libraries
  - golang.org/x/crypto, net, oauth2, etc.
  - Testing frameworks (testify)
  - Web scraping (goquery)
  - And more (see [Dockerfile](Dockerfile))

## Building

```bash
docker build -t go-base .
```

## Published Images

Images are automatically built and published via GitHub Actions:

- `ghcr.io/paulcager/go-base:latest`
- `ghcr.io/paulcager/go-base:main`
- `ghcr.io/paulcager/go-base:v1.25.4`

## License

MIT License - see [LICENSE](LICENSE)
