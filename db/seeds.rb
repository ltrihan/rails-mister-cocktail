# require 'json'
# require 'open-uri'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

ananas = Cocktail.create!(name: 'Ananas')
ananas.remote_photo_url = "https://images.unsplash.com/photo-1546173159-315724a31696?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"
ananas.save

icetea = Cocktail.create!(name: 'Ice Tea Lemon')
icetea.remote_photo_url = "https://images.unsplash.com/photo-1563227812-0ea4c22e6cc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
icetea.save

mure = Cocktail.create!(name: 'Mûre Subite')
mure.remote_photo_url = "https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1586&q=80"
mure.save

orange = Cocktail.create!(name: 'Orange')
orange.remote_photo_url = "https://images.unsplash.com/photo-1561283269-709b15755dec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
orange.save

sugar = Cocktail.create!(name: 'Sugar Fever')
sugar.remote_photo_url = "https://images.unsplash.com/photo-1542849187-5ec6ea5e6a27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1947&q=80"
sugar.save

shared = Cocktail.create!(name: 'Cocktails partagés')
shared.remote_photo_url = "https://images.unsplash.com/photo-1559443922-3f698a0ff27a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=969&q=80"
shared.save

ingredients = ['Coca', "Jus d'orange", 'Jus de pomme', 'Orangina', 'Schweppes', 'Rhum brun', 'Rhum blanc', 'Whiskey', 'Vodka', 'Eau']
ingredients.each { |ingredient| Ingredient.create!(name: ingredient) }

Cocktail.all.each do |cocktail|
  # cocktail = Cocktail.create!(name: Faker::Beer.name)
  Dose.create!(
    description: ['1cl', '2cl', '3cl'].sample,
    ingredient: Ingredient.all.sample,
    cocktail: cocktail
  )
end
