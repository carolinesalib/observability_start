require "opentelemetry/sdk"
require "opentelemetry/instrumentation/all"
require "opentelemetry-exporter-otlp"

OpenTelemetry::SDK.configure do |c|
  c.service_name = "observability-start"
  c.use_all() # enables all instrumentation!
end
