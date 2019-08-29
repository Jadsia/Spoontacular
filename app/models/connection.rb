require 'faraday'
require 'json'
require 'net/http'

class Connection
  BASE = 'http://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['X-RAPID-APIKEY'] = ENV['X-RAPID-APIKEY']
    end
  end
end
