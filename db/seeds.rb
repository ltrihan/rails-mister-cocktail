require 'json'
require 'open-uri'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient = open(url).read
user = JSON.parse(ingredient)

user['drinks'].each do |drink|
  ingredient = Ingredient.create!(name: drink['strIngredient1'])
  cocktail = Cocktail.create!(name: Faker::Beer.name)
  Dose.create!(
    description: ['1cl', '2cl', '3cl'].sample,
    ingredient: ingredient, cocktail: cocktail
  )
end
