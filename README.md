# Observability Start

This is a project to demonstrate how to start adding observability to a Rails application.

To run rails with open telemetry:

```shell
env OTEL_TRACES_EXPORTER=console rails server -p 8080
```

To run prometheus on macos via docker:

```shell
docker run \
    -p 9090:9090 \
    -v path/to/observability_start/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus
```
