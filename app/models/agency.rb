class Agency < ApplicationRecord
    has_many :actors, dependent: :destroy
    has_many :cities, through: :actors, dependent: :destroy
end
