FROM golang:1.15.5
WORKDIR /go/src/app

RUN go get -v \
    google.golang.org/api/option \
    google.golang.org/api/sheets/v4 \
    github.com/spf13/pflag \
    github.com/kr/pretty \
    gopkg.in/yaml.v2 \
    github.com/stretchr/testify/assert \
    github.com/stretchr/testify/require \
    github.com/prometheus/client_golang/prometheus/promhttp \
    github.com/prometheus/client_golang/prometheus/promauto \
    github.com/prometheus/client_golang/prometheus \
    github.com/awoodbeck/strftime \
    github.com/nicklaw5/go-respond \
    github.com/unrolled/secure \
    github.com/codingsince1985/geo-golang \
    gitlab.com/toby3d/telegraph \
    github.com/tdewolff/minify \
    github.com/gorilla/mux
