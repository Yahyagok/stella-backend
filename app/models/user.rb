class User < ApplicationRecord
    has_secure_password
    has_many :likes
    has_many :actors, through: :likes
    has_many :comments
    has_many :actors, through: :comments
    has_many :favorites
    has_many :actors, through: :favorites

validates :name, presence: true
validates :name, uniqueness: true
validates :password, presence: true
end
