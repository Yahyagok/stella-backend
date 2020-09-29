class CitySerializer
  include FastJsonapi::ObjectSerializer
  has_many :actors
  has_many :agencies, through: :actors
  attributes :name
end
