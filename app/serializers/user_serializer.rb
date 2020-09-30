class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :likes
  has_many :actors, through: :likes
  has_many :comments
  has_many :actors, through: :comments
  has_many :favorites
  has_many :actors, through: :favorites
  attributes :name, :password_digest
end

