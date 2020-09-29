class User < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :actors, through: :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :actors, through: :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :actors, through: :favorites, dependent: :destroy
end
