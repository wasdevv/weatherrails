require 'httparty'
require 'uri'
class HomeController < ApplicationController

    def index
    end

    def city
        @city = params[:city]
        api_key = "fe48c9f2ab54b55e1e23d50894ce6799"
        encoded_city = URI.encode_www_form_component(@city)

        api_url = "http://api.openweathermap.org/data/2.5/weather?q=#{encoded_city}&appid=#{api_key}"

        response = HTTParty.get(api_url)
        @data = response.parsed_response
    end
end
