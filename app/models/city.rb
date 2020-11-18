class City < ApplicationRecord
    has_many :actors
    has_many :agencies, through: :actors
end
