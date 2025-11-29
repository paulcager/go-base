FROM golang:1.25.4
WORKDIR /go/src/app

RUN go mod download -x \
	cloud.google.com/go@v0.116.0 \
	github.com/andybalholm/cascadia@v1.3.3 \
	github.com/beorn7/perks@v1.0.1 \
	github.com/cespare/xxhash/v2@v2.3.0 \
	github.com/cloudflare/cloudflare-go/v4@v4.0.0 \
	github.com/golang/freetype@v0.0.0-20170609003504-e2365dfdc4a0 \
	github.com/golang/groupcache@v0.0.0-20241129210726-2c02b8208cf8 \
	github.com/golang/protobuf@v1.5.4 \
	github.com/googleapis/gax-go/v2@v2.14.1 \
	github.com/kr/pretty@v0.3.1 \
	github.com/kr/text@v0.2.0 \
	github.com/llgcode/draw2d@v0.0.0-20240627062922-0ed1ff131195 \
	github.com/matttproud/golang_protobuf_extensions@v1.0.4 \
	github.com/paulmach/orb@v0.11.1 \
	github.com/prometheus/client_golang@v1.23.0 \
	github.com/prometheus/client_model@v0.6.1 \
	github.com/prometheus/common@v0.61.0 \
	github.com/prometheus/procfs@v0.15.1 \
	github.com/PuerkitoBio/goquery@v1.10.1 \
	github.com/spf13/pflag@v1.0.5 \
	github.com/stretchr/testify@v1.11.1 \
	golang.org/x/crypto@v0.45.0 \
	golang.org/x/image@v0.23.0 \
	golang.org/x/net@v0.34.0 \
	golang.org/x/oauth2@v0.26.0 \
	golang.org/x/sys@v0.29.0 \
	golang.org/x/text@v0.21.0 \
	google.golang.org/api@v0.214.0 \
	google.golang.org/grpc@v1.75.1 \
	google.golang.org/protobuf@v1.36.10 \
	go.opencensus.io@v0.24.0 \
	gopkg.in/yaml.v2@v2.4.0 \
	gopkg.in/yaml.v3@v3.0.1
