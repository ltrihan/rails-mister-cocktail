class Cocktail < ApplicationRecord
  # need to comment uniqueness because of faker gem use same names few times
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true # , uniqueness: true

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
