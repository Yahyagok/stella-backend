class Actor < ApplicationRecord
    belongs_to :agency
    belongs_to :city
    has_one :image_element
    has_many :likes
    has_many :users, through: :likes
    has_many :comments
    has_many :users, through: :likes
    has_many :favorites
    has_many :users, through: :favorites
end
