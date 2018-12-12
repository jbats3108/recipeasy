require "recipeasy/version"
require "net/http"
require "json"

module Recipeasy
  class Error < StandardError; end

  result= Net::HTTP.get("www.edamam.com","/search?type=Feeds")

  recipes = JSON.parse(result)

  puts recipes.first["items"].first["url"]


end
