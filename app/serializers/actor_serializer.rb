class ActorSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :agency
  belongs_to :city
  has_many :likes
  has_many :users, through: :likes
  has_many :comments
  has_many :users, through: :comments
  has_many :favorites
  has_many :users, through: :favorites
  attributes :name, :image, :contact_info, :city_id, :agency_id, :movies, :description
end
