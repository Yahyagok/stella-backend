class ImageElement < ApplicationRecord
  belongs_to :actor
  has_one_attached :image
end
