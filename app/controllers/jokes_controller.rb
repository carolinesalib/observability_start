require 'net/http'

class JokesController < ApplicationController
  def index
    uri = URI("https://v2.jokeapi.dev/joke/Programming?blacklistFlags=political,racist")
    joke_response = JSON.parse(Net::HTTP.get(uri))

    sleep(2)

    @joke_setup = joke_response["setup"]
    @joke_delivery = joke_response["delivery"] || joke_response["joke"]
  end
end
