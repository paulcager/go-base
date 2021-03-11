FROM golang:1.16.1
WORKDIR /go/src/app

RUN go mod download -x \
	github.com/PuerkitoBio/goquery@v1.6.0 \
	github.com/cloudflare/cloudflare-go@v0.14.0 \
	github.com/kr/pretty@v0.2.1 \
	github.com/llgcode/draw2d@v0.0.0-20200930101115-bfaf5d914d1e \
	github.com/paulmach/orb@v0.1.7 \
	github.com/prometheus/client_golang@v1.9.0 \
	github.com/prometheus/client_model@v0.2.0 \
	github.com/PuerkitoBio/goquery@v1.6.0 \
	github.com/spf13/pflag@v1.0.1 \
	github.com/spf13/pflag@v1.0.5 \
	github.com/stretchr/testify@v1.6.1 \
	golang.org/x/crypto@v0.0.0-20210220033148-5ea612d1eb83 \
	google.golang.org/api@v0.35.0 \
	gopkg.in/yaml.v2@v2.4.0

