require 'net/http'

class JokesController < ApplicationController
  def index
    uri = URI("https://v2.jokeapi.dev/joke/Programming?blacklistFlags=political,racist")
    joke_response = JSON.parse(Net::HTTP.get(uri))

    # Use it to test status code metric
    if rand < 0.5
      raise "A random error occurred!"
    end

    # Use it to test duration metric
    # sleep(2)

    @joke_setup = joke_response["setup"]
    @joke_delivery = joke_response["delivery"] || joke_response["joke"]
  end
end
