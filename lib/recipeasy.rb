require "recipeasy/version"
require "recipeasy/printing.rb"
require "net/http"
require "json"

module Recipeasy
  class Error < StandardError; end

  def self.recipe_fetch
  result= Net::HTTP.get("www.edamam.com","/search?type=Feeds")

  recipes = JSON.parse(result)

  url = (recipes.first["items"].first["url"]
  recipe_name = (recipes.first["items"].first["label"]

  puts "Tonight, let's make #{recipe_name}. You can find it at #{url}."

  end

end
