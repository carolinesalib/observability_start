require 'net/http'
require 'prometheus_exporter/client'

class JokesController < ApplicationController
  def index
    uri = URI("https://v2.jokeapi.dev/joke/Programming?blacklistFlags=political,racist")
    joke_response = JSON.parse(Net::HTTP.get(uri))

    # Use it to test status code metric
    if rand < 0.2
      # Simulate fake API timeout of 2 seconds
      sleep(2)

      raise "Error fetching fake API!"
    end

    @joke_title = joke_response["setup"]
    @joke = joke_response["delivery"] || joke_response["joke"]

    # Custom metric
    client = PrometheusExporter::Client.default
    counter = client.register(:counter, "jokes_custom_metric", "whether a joke has a title")
    counter.observe(1, has_title: @joke_title.present?)
  end
end
