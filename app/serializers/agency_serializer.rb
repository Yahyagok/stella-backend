class AgencySerializer
  include FastJsonapi::ObjectSerializer
  has_many :actors 
  has_many :cities, through: :actors
  
  attributes :name, :location
end
