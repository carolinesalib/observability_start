# Observability Start

This is a project to demonstrate how to start adding observability to a Rails application.

## Prerequisites

* Ruby 3.1.2
* Docker and docker compose installed

## Running the application

To run prometheus and graphana:
```shell
docker-compose up
```

To connect Prometheus to Grafana:
* Open http://localhost:3000/connections/datasources
  * User and password: admin
* Select Prometheus as data source
* Add `http://localhost:9090/` as Prometheus server URL

Run prometheus exporter service:

```shell
bundle exec prometheus_exporter
```

Run rails application:

```shell
rails server -p 3001
```
