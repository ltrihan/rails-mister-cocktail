class Cocktail < ApplicationRecord
  # need to comment uniqueness because of faker gem use same names few times
  validates :name, :photo, presence: true # , uniqueness: true

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
