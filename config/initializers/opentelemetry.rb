# require 'opentelemetry/sdk'
# require 'opentelemetry/exporter/otlp'


# OpenTelemetry::SDK.configure do |c|
#   # Disable tracing
#   c.trace_config = OpenTelemetry::SDK::Trace::Config::TraceConfig.new(
#     sampler: OpenTelemetry::SDK::Trace::Samplers::ALWAYS_OFF
#   )

#   # Enable metrics
#   c.add_metric_reader(
#     OpenTelemetry::SDK::Metrics::Export::PeriodicExportingMetricReader.new(
#       exporter: OpenTelemetry::Exporter::OTLP::MetricExporter.new(
#         endpoint: 'http://localhost:9394/metrics', # Update with your OTLP endpoint
#         insecure: true
#       ),
#       export_interval_millis: 500 # Export metrics every half second
#     )
#   )
# end
