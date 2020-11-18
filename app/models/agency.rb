class Agency < ApplicationRecord
    has_many :actors
    has_many :cities, through: :actors
end
