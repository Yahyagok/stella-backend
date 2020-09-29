class City < ApplicationRecord
    has_many :actors, dependent: :destroy
    has_many :agencies, through: :actors, dependent: :destroy
end
