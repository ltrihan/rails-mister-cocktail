# require 'json'
# require 'open-uri'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

Cocktail.create!(name: 'Ananas', photo: 'ananas.jpg')
Cocktail.create!(name: 'Ice Tea Lemon', photo: 'icetealemon.jpg')
Cocktail.create!(name: 'Mûre Subite', photo: 'muresubite.jpg')
Cocktail.create!(name: 'Orange', photo: 'orange.jpg')
Cocktail.create!(name: 'Sugar Fever', photo: 'sugarfever.jpg')
Cocktail.create!(name: 'Cocktails partagés', photo: 'sharedcocktail.jpg')

ingredients = ['Coca', "Jus d'orange", 'Jus de pomme', 'Orangina', 'Schweppes', 'Rhum brun', 'Rhum blanc', 'Whiskey', 'Vodka', 'Eau']
ingredients.each { |ingredient| Ingredient.create!(name: ingredient) }

Cocktail.all.each do |cocktail|
  # cocktail = Cocktail.create!(name: Faker::Beer.name)
  3.times do
    Dose.create!(
      description: ['1cl', '2cl', '3cl'].sample,
      ingredient: Ingredient.all.sample, cocktail: cocktail
    )
  end
end
