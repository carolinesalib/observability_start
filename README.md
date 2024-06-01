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

```shell
env OTEL_TRACES_EXPORTER=prometheus OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:9090" rails server -p 3001
```

To install grafana on macos

```shell
brew update
brew install grafana
brew services start grafana
```

Grafana will run on port 3000 by default. Default login is `admin` + `admin`. It can connect with prometheus by adding a Connection on the Grafana app itself.
