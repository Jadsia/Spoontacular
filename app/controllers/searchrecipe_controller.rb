require 'uri'
require 'net/http'
require 'openssl'

class SearchrecipeController <  ApplicationController

  def test
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?number=5&ranking=1&ignorePantry=false&ingredients=apples%2Cflour%2Csugar")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchbyingredient (ingredients)
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?number=5&ranking=1&ignorePantry=false&ingredients=" + ingredients)

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchwinepairing
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/pairing?maxPrice=50&food=")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchvideo
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/videos/search?query=chicken%20soup&excludeingredients=mustard&includeingredients=chicken&minLength=0&maxLength=999&offset=0&number=10")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def convertunits
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/convert?sourceUnit=cups&sourceAmount=2.5&ingredientName=flour&targetUnit=grams")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchcalories
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=2000&timeFrame=day")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchrecipeid
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/156992/similar")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def getfoodtrivia
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/trivia/random")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def quickanswer
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/quickAnswer?q=")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchnutritioninfo
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/guessNutrition?title=Spaghetti%20Aglio%20et%20Olio")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end

  def searchfoodname
    # uses 'search site content'
    url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/site/search?query=past")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    request["x-rapidapi-key"] = 'f05ecfa481msha20ba546f240359p10d22cjsn835758945c8c'

    response = http.request(request)
    puts response.read_body
  end


end
