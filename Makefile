
TERMSHARK_GIT_DESCRIBE := $(shell git describe --tags HEAD)
export TERMSHARK_GIT_DESCRIBE

test:
	go test -v./...
	bash scripts/simple-tests.sh

build:
	go build -o termshark cmd/termshark/termshark.go


release:
	goreleaser release --snapshot --skip sign --clean
