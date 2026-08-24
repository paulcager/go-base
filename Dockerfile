FROM golang:1.27.0
WORKDIR /go/src/app

RUN go mod download -x \
	cloud.google.com/go@v0.123.0 \
	github.com/andybalholm/cascadia@v1.3.4 \
	github.com/beorn7/perks@v1.0.1 \
	github.com/cespare/xxhash/v2@v2.3.0 \
	github.com/cloudflare/cloudflare-go/v4@v4.6.0 \
	github.com/golang/freetype@v0.0.0-20170609003504-e2365dfdc4a0 \
	github.com/golang/groupcache@v0.0.0-20241129210726-2c02b8208cf8 \
	github.com/golang/protobuf@v1.5.4 \
	github.com/googleapis/gax-go/v2@v2.24.0 \
	github.com/kr/pretty@v0.3.1 \
	github.com/kr/text@v0.2.0 \
	github.com/llgcode/draw2d@v0.0.0-20260422081035-c4331ac66734 \
	github.com/matttproud/golang_protobuf_extensions@v1.0.4 \
	github.com/paulmach/orb@v0.13.0 \
	github.com/prometheus/client_golang@v1.24.1 \
	github.com/prometheus/client_model@v0.6.2 \
	github.com/prometheus/common@v0.70.1 \
	github.com/prometheus/procfs@v0.21.1 \
	github.com/PuerkitoBio/goquery@v1.12.0 \
	github.com/spf13/pflag@v1.0.10 \
	github.com/stretchr/testify@v1.12.1 \
	golang.org/x/crypto@v0.55.0 \
	golang.org/x/image@v0.45.0 \
	golang.org/x/net@v0.58.0 \
	golang.org/x/oauth2@v0.36.0 \
	golang.org/x/sys@v0.47.0 \
	golang.org/x/text@v0.41.0 \
	google.golang.org/api@v0.293.0 \
	google.golang.org/grpc@v1.83.1 \
	google.golang.org/protobuf@v1.36.12 \
	go.opencensus.io@v0.24.0 \
	gopkg.in/yaml.v2@v2.4.0 \
	gopkg.in/yaml.v3@v3.0.1
