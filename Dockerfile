FROM golang:1.21.0
WORKDIR /go/src/app

RUN go mod download -x \
	cloud.google.com/go@v0.65.0 \
	github.com/andybalholm/cascadia@v1.1.0 \
	github.com/beorn7/perks@v1.0.1 \
	github.com/cespare/xxhash/v2@v2.1.1 \
	github.com/cloudflare/cloudflare-go@v0.14.0 \
	github.com/golang/freetype@v0.0.0-20170609003504-e2365dfdc4a0 \
	github.com/golang/groupcache@v0.0.0-20200121045136-8c9f03a8e57e \
	github.com/golang/protobuf@v1.4.3 \
	github.com/googleapis/gax-go/v2@v2.0.5 \
	github.com/kr/pretty@v0.2.1 \
	github.com/kr/text@v0.1.0 \
	github.com/llgcode/draw2d@v0.0.0-20200930101115-bfaf5d914d1e \
	github.com/matttproud/golang_protobuf_extensions@v1.0.1 \
	github.com/paulmach/orb@v0.1.7 \
	github.com/prometheus/client_golang@v1.9.0 \
	github.com/prometheus/client_model@v0.2.0 \
	github.com/prometheus/common@v0.15.0 \
	github.com/prometheus/procfs@v0.2.0 \
	github.com/PuerkitoBio/goquery@v1.6.0 \
	github.com/spf13/pflag@v1.0.1 \
	github.com/spf13/pflag@v1.0.5 \
	github.com/stretchr/testify@v1.6.1 \
	golang.org/x/crypto@v0.0.0-20210220033148-5ea612d1eb83 \
	golang.org/x/image@v0.0.0-20190802002840-cff245a6509b \
	golang.org/x/net@v0.0.0-20200822124328-c89045814202 \
	golang.org/x/oauth2@v0.0.0-20200902213428-5d25da1a8d43 \
	golang.org/x/sys@v0.0.0-20201214210602-f9fddec55a1e \
	golang.org/x/text@v0.3.3 \
	google.golang.org/api@v0.35.0 \
	google.golang.org/genproto@v0.0.0-20200904004341-0bd0a958aa1d \
	google.golang.org/grpc@v1.31.1 \
	google.golang.org/protobuf@v1.25.0 \
	go.opencensus.io@v0.22.4 \
	gopkg.in/yaml.v2@v2.4.0
