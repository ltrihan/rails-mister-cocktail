# require 'json'
# require 'open-uri'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredient = open(url).read
# user = JSON.parse(ingredient)

# user['drinks'].each do |drink|
#   ingredient = Ingredient.create!(name: drink['strIngredient1'])
#   cocktail = Cocktail.create!(name: Faker::Beer.name)
#   Dose.create!(
#     description: ['1cl', '2cl', '3cl'].sample,
#     ingredient: ingredient, cocktail: cocktail
#   )
# end

Cocktail.create!(name: 'Ananas', photo: 'ananas.jpg')
Cocktail.create!(name: 'Ice Tea Lemon', photo: 'icetealemon.jpg')
Cocktail.create!(name: 'Mûre Subite', photo: 'muresubite.jpg')
Cocktail.create!(name: 'Orange', photo: 'orange.jpg')
Cocktail.create!(name: 'Sugar Fever', photo: 'sugarfever.jpg')
Cocktail.create!(name: 'Cocktails partagés', photo: 'sharedcocktail.jpg')
