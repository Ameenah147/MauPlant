class Plant < ApplicationRecord
  has_many :garden_plant
  has_one_attached :photo
end
