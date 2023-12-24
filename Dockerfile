FROM golang:latest as build

RUN git clone https://github.com/foogod/powerwall_exporter \
    && cd powerwall_exporter \
    && go build \
    && go install \
    && cd .. \
    && rm -rf powerwall_exporter

ENTRYPOINT [ "/go/bin/powerwall_exporter" ]