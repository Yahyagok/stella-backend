class Actor < ApplicationRecord
    serialize :movies,Array
    belongs_to :agency, dependent: :destroy
    belongs_to :city, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :users, through: :likes, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :users, through: :favorites, dependent: :destroy
end
